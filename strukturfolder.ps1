# Direktori saat ini
$startPath = (Resolve-Path ".").Path

# Nama folder yang ingin dikecualikan (misal: "vendor", "node_modules", ".git", "cache")
# Anda bisa menambahkan lebih banyak folder di sini.
# Saya telah menambahkan "templates_c" berdasarkan output Anda sebelumnya.
$excludedFolders = @("vendor", "node_modules", ".git", "cache", "templates_c", "compile")

# --- Fungsi Pembantu untuk Menentukan Apakah Jalur Dikecualikan ---
# Fungsi ini memeriksa apakah jalur yang diberikan mengandung salah satu folder yang dikecualikan
# sebagai bagian dari jalurnya.
function Test-IsPathExcluded {
    param (
        [string]$Path,
        [string]$StartPath,
        [string[]]$ExcludedFolders
    )
    # Normalisasi jalur untuk perbandingan yang konsisten
    $normalizedPath = (Resolve-Path $Path).Path
    $normalizedStartPath = (Resolve-Path $StartPath).Path

    # Jika jalur itu sendiri adalah jalur awal, secara default tidak dikecualikan
    if ($normalizedPath -eq $normalizedStartPath) {
        return $false
    }

    # Dapatkan jalur relatif dari item saat ini terhadap $StartPath
    $relativePath = $normalizedPath.Substring($normalizedStartPath.Length)
    if ($relativePath.StartsWith("\")) {
        $relativePath = $relativePath.Substring(1)
    }

    # Pisahkan jalur relatif menjadi segmen-segmen
    $segments = $relativePath.Split("\")

    # Periksa setiap segmen jalur
    foreach ($segment in $segments) {
        if ($ExcludedFolders -contains $segment) {
            return $true # Ditemukan folder yang dikecualikan di jalur
        }
    }
    return $false
}

# --- Fungsi Rekursif untuk Mencetak Pohon Direktori ---
# Fungsi ini akan melintasi direktori secara rekursif dan mencetak strukturnya.
function Print-DirectoryTree {
    param (
        [string]$CurrentPath, # Jalur direktori yang sedang diproses
        [int]$Depth = 0,     # Kedalaman saat ini dalam pohon (dimulai dari 0 untuk root yang dicetak di luar fungsi)
        [string]$Prefix = "", # Awalan baris untuk indentasi dan garis vertikal
        [string[]]$ExcludedFolders, # Daftar folder yang dikecualikan
        [string]$RootPath   # Jalur root asli (untuk perbandingan pengecualian)
    )

    # Dapatkan semua item (file dan direktori) di direktori saat ini.
    # Urutkan direktori terlebih dahulu (PSIsContainer Descending), kemudian urutkan berdasarkan nama.
    # Menggunakan calculated property untuk pengurutan ganda dengan arah berbeda.
    $children = Get-ChildItem -Path $CurrentPath | Sort-Object -Property @{Expression='PSIsContainer'; Descending=$true}, Name

    $totalChildren = $children.Count
    $childIndex = 0

    # Iterasi melalui setiap anak
    foreach ($child in $children) {
        $childIndex++
        $isLastChild = ($childIndex -eq $totalChildren) # Menentukan apakah ini anak terakhir

        # Lewati jika jalur anak itu sendiri atau salah satu segmen induknya dikecualikan
        if (Test-IsPathExcluded -Path $child.FullName -StartPath $RootPath -ExcludedFolders $ExcludedFolders) {
            continue # Lewati item ini dan seluruh sub-pohonnya
        }

        # Tentukan karakter garis penghubung untuk item saat ini
        $lineChar = ""
        $indentCharForNextLevel = "" # Karakter indentasi untuk panggilan rekursif berikutnya

        if ($isLastChild) {
            $lineChar = "`-- " # Karakter untuk anak terakhir (ASCII: `-- `)
            $indentCharForNextLevel = "    " # Spasi untuk garis vertikal berikutnya dari induk
        } else {
            $lineChar = "|-- " # Karakter untuk bukan anak terakhir (ASCII: `|-- `)
            $indentCharForNextLevel = "|   " # Garis vertikal untuk garis vertikal berikutnya dari induk
        }

        # Buat awalan untuk item saat ini (gabungan dari prefix induk dan lineChar)
        $currentItemPrefix = $Prefix + $lineChar

        # Cetak item
        if ($child.PSIsContainer) {
            Write-Host "$currentItemPrefix[ $($child.Name) ]" -ForegroundColor Green
            # Panggil fungsi secara rekursif untuk subdirektori
            Print-DirectoryTree -CurrentPath $child.FullName -Depth ($Depth + 1) -Prefix ($Prefix + $indentCharForNextLevel) -ExcludedFolders $ExcludedFolders -RootPath $RootPath
        } else {
            Write-Host "$currentItemPrefix$($child.Name)" -ForegroundColor Cyan
        }
    }
}

# --- Eksekusi Skrip Utama ---

# Cetak direktori root terlebih dahulu
Write-Host "[ $($startPath | Split-Path -Leaf) ]" -ForegroundColor Green

# Mulai pencetakan pohon rekursif dari root
Print-DirectoryTree -CurrentPath $startPath -Depth 0 -Prefix "" -ExcludedFolders $excludedFolders -RootPath $startPath
