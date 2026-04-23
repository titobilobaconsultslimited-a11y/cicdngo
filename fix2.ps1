$dir = "c:\Users\user\Downloads\my wesite journey\cicd site"
$files = @("about.html","get-involved.html","resources.html","contact.html","programs.html")
$latin1enc = [System.Text.Encoding]::GetEncoding(28591)
$utf8enc = New-Object System.Text.UTF8Encoding $false

foreach ($f in $files) {
    $path = Join-Path $dir $f
    $bytes = [System.IO.File]::ReadAllBytes($path)
    $content = $latin1enc.GetString($bytes)

    # Helper: build a search string from UTF-8 byte array via latin1
    # Each emoji: provide its UTF-8 bytes; latin1 maps bytes 1:1 to chars
    
    function EmojiStr([byte[]]$utf8bytes) {
        return $latin1enc.GetString($utf8bytes)
    }

    # U+1F4CB clipboard 📋 -> F0 9F 93 8B
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0x8B)), '&#x1F4CB;')
    # U+1F4CD pushpin 📍 -> F0 9F 93 8D
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0x8D)), '&#x1F4CD;')
    # U+1F5D3 FE0F spiral calendar 🗓️ -> F0 9F 97 93 EF B8 8F
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x97,0x93,0xEF,0xB8,0x8F)), '&#x1F5D3;&#xFE0F;')
    # U+1F30D globe 🌍 -> F0 9F 8C 8D
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x8C,0x8D)), '&#x1F30D;')
    # U+1F91D handshake 🤝 -> F0 9F A4 9D
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0xA4,0x9D)), '&#x1F91D;')
    # U+1F517 link 🔗 -> F0 9F 94 97
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x94,0x97)), '&#x1F517;')
    # U+1F4CA chart 📊 -> F0 9F 93 8A
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0x8A)), '&#x1F4CA;')
    # U+1F6E1 FE0F shield 🛡️ -> F0 9F 9B A1 EF B8 8F
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x9B,0xA1,0xEF,0xB8,0x8F)), '&#x1F6E1;&#xFE0F;')
    # U+2B50 star ⭐ -> E2 AD 90
    $content = $content.Replace((EmojiStr @(0xE2,0xAD,0x90)), '&#x2B50;')
    # U+1F64F pray 🙏 -> F0 9F 99 8F
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x99,0x8F)), '&#x1F64F;')
    # U+1F512 lock 🔒 -> F0 9F 94 92
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x94,0x92)), '&#x1F512;')
    # U+1F465 busts 👥 -> F0 9F 91 A5
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x91,0xA5)), '&#x1F465;')
    # U+2696 FE0F scales ⚖️ -> E2 9A 96 EF B8 8F
    $content = $content.Replace((EmojiStr @(0xE2,0x9A,0x96,0xEF,0xB8,0x8F)), '&#x2696;&#xFE0F;')
    # U+1F4A1 bulb 💡 -> F0 9F 92 A1
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x92,0xA1)), '&#x1F4A1;')
    # U+1F3EB school 🏫 -> F0 9F 8F AB
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x8F,0xAB)), '&#x1F3EB;')
    # U+1F9E0 brain 🧠 -> F0 9F A7 A0
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0xA7,0xA0)), '&#x1F9E0;')
    # U+2764 FE0F heart ❤️ -> E2 9D A4 EF B8 8F
    $content = $content.Replace((EmojiStr @(0xE2,0x9D,0xA4,0xEF,0xB8,0x8F)), '&#x2764;&#xFE0F;')
    # U+1F4E3 megaphone 📣 -> F0 9F 93 A3
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0xA3)), '&#x1F4E3;')
    # U+1F4C4 document 📄 -> F0 9F 93 84
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0x84)), '&#x1F4C4;')
    # U+1F4DE phone 📞 -> F0 9F 93 9E
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0x9E)), '&#x1F4DE;')
    # U+2709 FE0F envelope ✉️ -> E2 9C 89 EF B8 8F
    $content = $content.Replace((EmojiStr @(0xE2,0x9C,0x89,0xEF,0xB8,0x8F)), '&#x2709;&#xFE0F;')
    # U+1F4D8 blue book 📘 -> F0 9F 93 98
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0x98)), '&#x1F4D8;')
    # U+1F4F8 camera with flash 📸 -> F0 9F 93 B8
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0xB8)), '&#x1F4F8;')
    # U+1F54A FE0F dove 🕊️ -> F0 9F 95 8A EF B8 8F
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x95,0x8A,0xEF,0xB8,0x8F)), '&#x1F54A;&#xFE0F;')
    # U+1F393 graduation 🎓 -> F0 9F 8E 93
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x8E,0x93)), '&#x1F393;')
    # U+1F4AC speech bubble 💬 -> F0 9F 92 AC
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x92,0xAC)), '&#x1F4AC;')
    # U+1F4F1 mobile 📱 -> F0 9F 93 B1
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x93,0xB1)), '&#x1F4F1;')
    # U+1F338 cherry blossom 🌸 -> F0 9F 8C B8
    $content = $content.Replace((EmojiStr @(0xF0,0x9F,0x8C,0xB8)), '&#x1F338;')
    # U+2014 em dash — -> E2 80 94
    $content = $content.Replace((EmojiStr @(0xE2,0x80,0x94)), '&mdash;')
    # U+00B7 middle dot · via UTF-8 C2 B7
    $content = $content.Replace((EmojiStr @(0xC2,0xB7)), '&middot;')
    # U+00A9 copyright © via UTF-8 C2 A9
    $content = $content.Replace((EmojiStr @(0xC2,0xA9)), '&copy;')
    # U+2026 ellipsis … via UTF-8 E2 80 A6
    $content = $content.Replace((EmojiStr @(0xE2,0x80,0xA6)), '&hellip;')
    # U+2019 right single quote ' via UTF-8 E2 80 99
    $content = $content.Replace((EmojiStr @(0xE2,0x80,0x99)), '&rsquo;')
    # U+201C left double quote " via UTF-8 E2 80 9C
    $content = $content.Replace((EmojiStr @(0xE2,0x80,0x9C)), '&ldquo;')
    # U+201D right double quote " via UTF-8 E2 80 9D
    $content = $content.Replace((EmojiStr @(0xE2,0x80,0x9D)), '&rdquo;')

    # Now re-encode: content is latin1 string with HTML entities (pure ASCII),
    # and remaining chars that are already valid HTML/ASCII
    # Write back as UTF-8 without BOM
    $outBytes = $utf8enc.GetBytes($content)
    [System.IO.File]::WriteAllBytes($path, $outBytes)
    Write-Host "Fixed: $f"
}
