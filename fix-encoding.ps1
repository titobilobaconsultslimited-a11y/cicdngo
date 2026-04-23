param([string]$file)
$path = "c:\Users\user\Downloads\my wesite journey\cicd site\$file"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

# Em dash (â€" is UTF-8 bytes C3A2 E282AC E2809C misread as latin1 = U+2014)
$content = $content.Replace([char]0x00E2 + [char]0x20AC + [char]0x201C, '&mdash;')
# Middle dot (Â· = C2B7 as latin1)
$content = $content.Replace([char]0x00C2 + [char]0x00B7, '&middot;')
# Copyright (Â© = C2A9)
$content = $content.Replace([char]0x00C2 + [char]0x00A9, '&copy;')

# Emoji replacements - each emoji's UTF-8 bytes were read as latin1 codepoints
# We match the mojibake strings directly as PowerShell unicode chars

# 📋 U+1F4CB -> F0 9F 93 8B -> latin1: ð Ÿ " ‹
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{008B}", '&#x1F4CB;')
# 📍 U+1F4CD -> F0 9F 93 8D
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{008D}", '&#x1F4CD;')
# 🗓️ U+1F5D3 U+FE0F -> F0 9F 97 93 EF B8 8F
$content = $content.Replace("`u{00F0}`u{009F}`u{0097}`u{0093}`u{00EF}`u{00B8}`u{008F}", '&#x1F5D3;&#xFE0F;')
# 🌍 U+1F30D -> F0 9F 8C 8D
$content = $content.Replace("`u{00F0}`u{009F}`u{008C}`u{008D}", '&#x1F30D;')
# 🤝 U+1F91D -> F0 9F A4 9D
$content = $content.Replace("`u{00F0}`u{009F}`u{00A4}`u{009D}", '&#x1F91D;')
# 🔗 U+1F517 -> F0 9F 94 97
$content = $content.Replace("`u{00F0}`u{009F}`u{0094}`u{0097}", '&#x1F517;')
# 📊 U+1F4CA -> F0 9F 93 8A
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{008A}", '&#x1F4CA;')
# 🛡️ U+1F6E1 U+FE0F -> F0 9F 9B A1 EF B8 8F
$content = $content.Replace("`u{00F0}`u{009F}`u{009B}`u{00A1}`u{00EF}`u{00B8}`u{008F}", '&#x1F6E1;&#xFE0F;')
# ⭐ U+2B50 -> E2 AD 90
$content = $content.Replace("`u{00E2}`u{00AD}`u{0090}", '&#x2B50;')
# 🙏 U+1F64F -> F0 9F 99 8F
$content = $content.Replace("`u{00F0}`u{009F}`u{0099}`u{008F}", '&#x1F64F;')
# 🔒 U+1F512 -> F0 9F 94 92
$content = $content.Replace("`u{00F0}`u{009F}`u{0094}`u{0092}", '&#x1F512;')
# 👥 U+1F465 -> F0 9F 91 A5
$content = $content.Replace("`u{00F0}`u{009F}`u{0091}`u{00A5}", '&#x1F465;')
# ⚖️ U+2696 U+FE0F -> E2 9A 96 EF B8 8F
$content = $content.Replace("`u{00E2}`u{009A}`u{0096}`u{00EF}`u{00B8}`u{008F}", '&#x2696;&#xFE0F;')
# 💡 U+1F4A1 -> F0 9F 92 A1
$content = $content.Replace("`u{00F0}`u{009F}`u{0092}`u{00A1}", '&#x1F4A1;')
# 🏫 U+1F3EB -> F0 9F 8F AB
$content = $content.Replace("`u{00F0}`u{009F}`u{008F}`u{00AB}", '&#x1F3EB;')
# 🧠 U+1F9E0 -> F0 9F A7 A0
$content = $content.Replace("`u{00F0}`u{009F}`u{00A7}`u{00A0}", '&#x1F9E0;')
# ❤️ U+2764 U+FE0F -> E2 9D A4 EF B8 8F
$content = $content.Replace("`u{00E2}`u{009D}`u{00A4}`u{00EF}`u{00B8}`u{008F}", '&#x2764;&#xFE0F;')
# 📣 U+1F4E3 -> F0 9F 93 A3
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{00A3}", '&#x1F4E3;')
# 📄 U+1F4C4 -> F0 9F 93 84
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{0084}", '&#x1F4C4;')
# 📞 U+1F4DE -> F0 9F 93 9E
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{009E}", '&#x1F4DE;')
# ✉️ U+2709 U+FE0F -> E2 9C 89 EF B8 8F
$content = $content.Replace("`u{00E2}`u{009C}`u{0089}`u{00EF}`u{00B8}`u{008F}", '&#x2709;&#xFE0F;')
# 📘 U+1F4D8 -> F0 9F 93 98
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{0098}", '&#x1F4D8;')
# 📸 U+1F4F8 -> F0 9F 93 B8
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{00B8}", '&#x1F4F8;')
# 🕊️ U+1F54A U+FE0F -> F0 9F 95 8A EF B8 8F
$content = $content.Replace("`u{00F0}`u{009F}`u{0095}`u{008A}`u{00EF}`u{00B8}`u{008F}", '&#x1F54A;&#xFE0F;')
# 🎓 U+1F393 -> F0 9F 8E 93
$content = $content.Replace("`u{00F0}`u{009F}`u{008E}`u{0093}", '&#x1F393;')
# 💬 U+1F4AC -> F0 9F 92 AC
$content = $content.Replace("`u{00F0}`u{009F}`u{0092}`u{00AC}", '&#x1F4AC;')
# 📱 U+1F4F1 -> F0 9F 93 B1
$content = $content.Replace("`u{00F0}`u{009F}`u{0093}`u{00B1}", '&#x1F4F1;')
# 🌸 U+1F338 -> F0 9F 8C B8
$content = $content.Replace("`u{00F0}`u{009F}`u{008C}`u{00B8}", '&#x1F338;')

[System.IO.File]::WriteAllText($path, $content, (New-Object System.Text.UTF8Encoding $false))
Write-Host "Fixed: $file"
