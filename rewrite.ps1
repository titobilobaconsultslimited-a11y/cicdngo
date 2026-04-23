$dir = "c:\Users\user\Downloads\my wesite journey\cicd site"
$utf8 = New-Object System.Text.UTF8Encoding $false

# ============================================================
# ABOUT.HTML
# ============================================================
$about = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About &mdash; CICD</title>
<meta name="description" content="Learn about the Center for Individual and Child Development (CICD) &mdash; our story, mission, values, and the team behind our work in Nigeria.">
<meta property="og:title" content="About &mdash; CICD">
<meta property="og:description" content="CICD is a Lagos-based non-profit working with communities for the total development of women, youths, and children across Nigeria.">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="About &mdash; CICD">
<meta name="twitter:description" content="CICD is a Lagos-based non-profit working with communities for the total development of women, youths, and children across Nigeria.">
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><circle cx='50' cy='50' r='50' fill='%23e6a800'/><circle cx='50' cy='50' r='42' fill='white'/><rect x='46' y='58' width='8' height='24' rx='3' fill='%231a7a3c'/><ellipse cx='34' cy='50' rx='15' ry='18' fill='%231a7a3c'/><ellipse cx='66' cy='52' rx='13' ry='15' fill='%231a7a3c'/><ellipse cx='50' cy='34' rx='16' ry='18' fill='%231a7a3c'/></svg>" type="image/svg+xml">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<!-- SVG CICD LOGO DEFINITION -->
<svg style="display:none" xmlns="http://www.w3.org/2000/svg" id="cicd-logo-def">
  <symbol id="cicd-logo" viewBox="0 0 100 100">
    <circle cx="50" cy="50" r="48" fill="#e6a800" />
    <circle cx="50" cy="50" r="42" fill="white" />
    <rect x="46" y="60" width="8" height="22" rx="3" fill="#1a7a3c"/>
    <ellipse cx="34" cy="50" rx="15" ry="18" fill="#1a7a3c"/>
    <ellipse cx="66" cy="52" rx="13" ry="15" fill="#1a7a3c"/>
    <ellipse cx="50" cy="36" rx="16" ry="18" fill="#1a7a3c"/>
    <circle cx="50" cy="27" r="4" fill="#e6a800"/>
    <line x1="50" y1="31" x2="50" y2="39" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="44" y1="34" x2="56" y2="34" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="50" y1="39" x2="45" y2="44" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="50" y1="39" x2="55" y2="44" stroke="#e6a800" stroke-width="2.5"/>
    <circle cx="63" cy="51" r="3" fill="#e6a800"/>
    <line x1="63" y1="54" x2="63" y2="60" stroke="#e6a800" stroke-width="2"/>
    <line x1="59" y1="57" x2="67" y2="57" stroke="#e6a800" stroke-width="2"/>
    <line x1="63" y1="60" x2="60" y2="65" stroke="#e6a800" stroke-width="2"/>
    <line x1="63" y1="60" x2="66" y2="65" stroke="#e6a800" stroke-width="2"/>
    <circle cx="34" cy="57" r="3" fill="#e6a800"/>
    <ellipse cx="32" cy="62" rx="6" ry="3" fill="#e6a800"/>
  </symbol>
</svg>

<!-- NAV -->
<nav aria-label="Main navigation">
  <a href="index.html" class="nav-brand">
    <div class="nav-logo-img">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <use href="#cicd-logo"/>
      </svg>
    </div>
    <div class="nav-logo-text">
      <span class="nav-logo-abbr">CICD</span>
      <span class="nav-logo-full">Center for Individual &amp; Child Development</span>
    </div>
  </a>
  <ul class="nav-links" id="nav-menu">
    <li><a href="about.html" aria-current="page">About</a></li>
    <li><a href="programs.html">Programs</a></li>
    <li><a href="get-involved.html">Get Involved</a></li>
    <li><a href="resources.html">Resources</a></li>
    <li><a href="contact.html">Contact</a></li>
    <li><a href="get-involved.html" class="nav-cta">Donate Now</a></li>
  </ul>
  <button class="nav-hamburger" id="nav-hamburger" aria-label="Toggle navigation menu" aria-expanded="false" aria-controls="nav-menu">
    <span></span><span></span><span></span>
  </button>
</nav>

<main>

<!-- ABOUT SECTION -->
<section id="about">
  <div class="section-header">
    <h2>About CICD</h2>
    <p class="section-sub">A non-profit catalyst for collective action since 2017</p>
  </div>
  <div class="about-grid">
    <div class="about-visual">
      <div class="about-logo-box">
        <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg" style="width:90px;height:90px;">
          <use href="#cicd-logo"/>
        </svg>
        <div class="about-logo-label">CICD</div>
        <div class="about-logo-sub">Est. 2017 &middot; Lagos, Nigeria</div>
      </div>
      <div class="about-reg-box">
        <div class="reg-item">
          <span class="reg-icon" aria-hidden="true">&#x1F4CB;</span>
          <div>
            <strong>CAC Registration</strong>
            <span>CAC/IT/NO 98428</span>
          </div>
        </div>
        <div class="reg-item">
          <span class="reg-icon" aria-hidden="true">&#x1F4CD;</span>
          <div>
            <strong>Headquarters</strong>
            <span>Lagos State, Nigeria</span>
          </div>
        </div>
        <div class="reg-item">
          <span class="reg-icon" aria-hidden="true">&#x1F5D3;&#xFE0F;</span>
          <div>
            <strong>Founded</strong>
            <span>May 31, 2017</span>
          </div>
        </div>
        <div class="reg-item">
          <span class="reg-icon" aria-hidden="true">&#x1F30D;</span>
          <div>
            <strong>Coverage</strong>
            <span>Kosofe, Somolu &amp; Ikorodu LGAs</span>
          </div>
        </div>
      </div>
    </div>
    <div class="about-text">
      <p class="about-lead">The Center for Individual and Child Development (CICD) is a non-governmental, non-profit organisation registered with the Corporate Affairs Commission of Nigeria.</p>
      <p>Our organization works in three Lagos LGAs &mdash; Kosofe, Somolu, and Ikorodu &mdash; reaching over 110 schools in Education District 2. We develop programs and humanitarian interventions that improve the educational, health, social, and economic conditions of women, youths, and children.</p>
      <p>CICD believes in collective action. We partner with schools, government agencies, corporations, and community groups to deliver sustainable, people-centred programs that create lasting change in the lives of Nigeria's most vulnerable populations.</p>
      <p>Since our founding in 2017, we have trained Zero Violence Ambassadors, run annual workshops on child protection, and created safe spaces for young people to speak up, heal, and grow.</p>
      <div class="about-btns">
        <a href="get-involved.html" class="btn btn-gold">Support Our Work</a>
        <a href="programs.html" class="btn btn-outline">See Our Programs</a>
      </div>
    </div>
  </div>
</section>

<!-- CORE VALUES SECTION -->
<section class="values-section">
  <div class="section-header">
    <h2>Our Core Values</h2>
    <p class="section-sub">The principles that guide everything we do</p>
  </div>
  <div class="values-grid">
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x1F91D;</span>
      <h4>Commitment</h4>
      <p>Dedication to our mission in every program, partnership, and interaction we undertake.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x1F517;</span>
      <h4>Networking</h4>
      <p>Building bridges between communities, partners, and institutions to amplify impact.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x1F4CA;</span>
      <h4>Accountability</h4>
      <p>Transparent use of resources and honest reporting to donors, partners, and communities.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x1F6E1;&#xFE0F;</span>
      <h4>Responsibility</h4>
      <p>Owning our actions and their impact &mdash; on the people we serve and the planet we share.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x2B50;</span>
      <h4>Performance</h4>
      <p>Striving for excellence and measurable outcomes in every program and initiative.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x1F64F;</span>
      <h4>Respect for Others</h4>
      <p>Honouring the dignity, culture, and voice of every individual and community we serve.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x1F512;</span>
      <h4>Confidentiality</h4>
      <p>Protecting the privacy and personal information of all those in our care.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x1F465;</span>
      <h4>Teamwork</h4>
      <p>Collaborating with staff, volunteers, and partners to achieve shared goals.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x2696;&#xFE0F;</span>
      <h4>Human Rights</h4>
      <p>Upholding the rights of every person &mdash; especially women, children, and vulnerable youth.</p>
    </div>
    <div class="value-card">
      <span class="value-icon" aria-hidden="true">&#x1F4A1;</span>
      <h4>Transparency &amp; Innovation</h4>
      <p>Open in our operations and bold in adopting new solutions to old problems.</p>
    </div>
  </div>
</section>

</main>

<!-- FOOTER -->
<footer>
  <div class="footer-brand">
    <div class="footer-logo-circle">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <use href="#cicd-logo"/>
      </svg>
    </div>
    <span class="footer-logo-text">CICD</span>
  </div>
  <p>&copy; 2026 Center for Individual and Child Development &middot; CAC/IT/NO 98428 &middot; All rights reserved.</p>
  <nav aria-label="Footer navigation">
    <a href="index.html">Home</a>
    <a href="about.html">About</a>
    <a href="programs.html">Programs</a>
    <a href="get-involved.html">Get Involved</a>
    <a href="contact.html">Contact</a>
  </nav>
</footer>

<script src="main.js"></script>
</body>
</html>
'@
[System.IO.File]::WriteAllText((Join-Path $dir "about.html"), $about, $utf8)
Write-Host "Written: about.html"

# ============================================================
# GET-INVOLVED.HTML
# ============================================================
$getinvolved = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Get Involved &mdash; CICD</title>
<meta name="description" content="Join CICD as a school mentor, counsellor, donor, or partner. Every contribution helps build safer futures for women, youths, and children in Nigeria.">
<meta property="og:title" content="Get Involved &mdash; CICD">
<meta property="og:description" content="Volunteer, donate, or partner with CICD to end violence and build futures for Nigerian children and youth.">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="Get Involved &mdash; CICD">
<meta name="twitter:description" content="Volunteer, donate, or partner with CICD to end violence and build futures for Nigerian children and youth.">
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><circle cx='50' cy='50' r='50' fill='%23e6a800'/><circle cx='50' cy='50' r='42' fill='white'/><rect x='46' y='58' width='8' height='24' rx='3' fill='%231a7a3c'/><ellipse cx='34' cy='50' rx='15' ry='18' fill='%231a7a3c'/><ellipse cx='66' cy='52' rx='13' ry='15' fill='%231a7a3c'/><ellipse cx='50' cy='34' rx='16' ry='18' fill='%231a7a3c'/></svg>" type="image/svg+xml">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<!-- SVG CICD LOGO DEFINITION -->
<svg style="display:none" xmlns="http://www.w3.org/2000/svg" id="cicd-logo-def">
  <symbol id="cicd-logo" viewBox="0 0 100 100">
    <circle cx="50" cy="50" r="48" fill="#e6a800" />
    <circle cx="50" cy="50" r="42" fill="white" />
    <rect x="46" y="60" width="8" height="22" rx="3" fill="#1a7a3c"/>
    <ellipse cx="34" cy="50" rx="15" ry="18" fill="#1a7a3c"/>
    <ellipse cx="66" cy="52" rx="13" ry="15" fill="#1a7a3c"/>
    <ellipse cx="50" cy="36" rx="16" ry="18" fill="#1a7a3c"/>
    <circle cx="50" cy="27" r="4" fill="#e6a800"/>
    <line x1="50" y1="31" x2="50" y2="39" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="44" y1="34" x2="56" y2="34" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="50" y1="39" x2="45" y2="44" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="50" y1="39" x2="55" y2="44" stroke="#e6a800" stroke-width="2.5"/>
    <circle cx="63" cy="51" r="3" fill="#e6a800"/>
    <line x1="63" y1="54" x2="63" y2="60" stroke="#e6a800" stroke-width="2"/>
    <line x1="59" y1="57" x2="67" y2="57" stroke="#e6a800" stroke-width="2"/>
    <line x1="63" y1="60" x2="60" y2="65" stroke="#e6a800" stroke-width="2"/>
    <line x1="63" y1="60" x2="66" y2="65" stroke="#e6a800" stroke-width="2"/>
    <circle cx="34" cy="57" r="3" fill="#e6a800"/>
    <ellipse cx="32" cy="62" rx="6" ry="3" fill="#e6a800"/>
  </symbol>
</svg>

<!-- NAV -->
<nav aria-label="Main navigation">
  <a href="index.html" class="nav-brand">
    <div class="nav-logo-img">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <use href="#cicd-logo"/>
      </svg>
    </div>
    <div class="nav-logo-text">
      <span class="nav-logo-abbr">CICD</span>
      <span class="nav-logo-full">Center for Individual &amp; Child Development</span>
    </div>
  </a>
  <ul class="nav-links" id="nav-menu">
    <li><a href="about.html">About</a></li>
    <li><a href="programs.html">Programs</a></li>
    <li><a href="get-involved.html" aria-current="page">Get Involved</a></li>
    <li><a href="resources.html">Resources</a></li>
    <li><a href="contact.html">Contact</a></li>
    <li><a href="get-involved.html" class="nav-cta">Donate Now</a></li>
  </ul>
  <button class="nav-hamburger" id="nav-hamburger" aria-label="Toggle navigation menu" aria-expanded="false" aria-controls="nav-menu">
    <span></span><span></span><span></span>
  </button>
</nav>

<main>

<!-- GET INVOLVED SECTION -->
<section id="get-involved">
  <div class="section-header">
    <h2>Get Involved</h2>
    <p class="section-sub">Your time, skills, and support make our work possible</p>
  </div>

  <div class="involve-grid">
    <div class="ways-list">
      <div class="way-item">
        <span class="way-icon" aria-hidden="true">&#x1F3EB;</span>
        <div>
          <h3>Become a School Mentor</h3>
          <p>Visit schools in Kosofe, Somolu, or Ikorodu and spend time with our Zero Violence Ambassadors. Share your story, skills, and hope with students who need role models.</p>
        </div>
      </div>
      <div class="way-item">
        <span class="way-icon" aria-hidden="true">&#x1F9E0;</span>
        <div>
          <h3>Volunteer as a Counsellor or Therapist</h3>
          <p>Licensed mental health professionals can volunteer at our Walk-In Talk Clinic. Provide free sessions to young people who cannot afford professional support.</p>
        </div>
      </div>
      <div class="way-item">
        <span class="way-icon" aria-hidden="true">&#x2764;&#xFE0F;</span>
        <div>
          <h3>Donate</h3>
          <p>Financial gifts fund program delivery, materials, transportation, and staff. Every naira goes directly to the communities we serve. Contact us for bank details.</p>
        </div>
      </div>
      <div class="way-item">
        <span class="way-icon" aria-hidden="true">&#x1F91D;</span>
        <div>
          <h3>Become a Corporate Partner</h3>
          <p>Align your brand with impact. We welcome CSR partnerships, in-kind donations, and joint program delivery with companies committed to child welfare and education.</p>
        </div>
      </div>
      <div class="way-item">
        <span class="way-icon" aria-hidden="true">&#x1F4E3;</span>
        <div>
          <h3>Spread the Word</h3>
          <p>Follow us on Facebook and Instagram <strong>@Cicdngo</strong>. Share our content, tag us in your advocacy posts, and help us grow our community of changemakers.</p>
        </div>
      </div>
    </div>

    <div class="involve-form" aria-label="Interest form">
      <h3>Express Your Interest</h3>
      <p>Fill in the form below and we'll be in touch within 48 hours.</p>
      <form action="https://formsubmit.co/Cicdngo@yahoo.com" method="POST" novalidate>
        <input type="hidden" name="_subject" value="New Volunteer/Partner Interest &mdash; CICD Website">
        <input type="hidden" name="_captcha" value="false">
        <div class="form-group">
          <label for="inv-name">Full Name <span aria-hidden="true">*</span></label>
          <input type="text" id="inv-name" name="name" required autocomplete="name" placeholder="Your full name">
        </div>
        <div class="form-group">
          <label for="inv-email">Email Address <span aria-hidden="true">*</span></label>
          <input type="email" id="inv-email" name="email" required autocomplete="email" placeholder="you@example.com">
        </div>
        <div class="form-group">
          <label for="inv-phone">Phone Number</label>
          <input type="tel" id="inv-phone" name="phone" autocomplete="tel" placeholder="+234 xxx xxx xxxx">
        </div>
        <div class="form-group">
          <label for="inv-role">How would you like to help? <span aria-hidden="true">*</span></label>
          <select id="inv-role" name="role" required>
            <option value="" disabled selected>Select an option</option>
            <option value="School Mentor">School Mentor</option>
            <option value="Counsellor/Therapist">Counsellor / Therapist</option>
            <option value="Donor">Donor</option>
            <option value="Corporate Partner">Corporate Partner</option>
            <option value="Spread the Word">Spread the Word / Ambassador</option>
            <option value="Other">Other</option>
          </select>
        </div>
        <div class="form-group">
          <label for="inv-message">Tell us a bit about yourself</label>
          <textarea id="inv-message" name="message" rows="4" placeholder="Your background, availability, or any questions..."></textarea>
        </div>
        <button type="submit" class="btn btn-gold">Send My Interest</button>
      </form>
    </div>
  </div>
</section>

</main>

<!-- FOOTER -->
<footer>
  <div class="footer-brand">
    <div class="footer-logo-circle">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <use href="#cicd-logo"/>
      </svg>
    </div>
    <span class="footer-logo-text">CICD</span>
  </div>
  <p>&copy; 2026 Center for Individual and Child Development &middot; CAC/IT/NO 98428 &middot; All rights reserved.</p>
  <nav aria-label="Footer navigation">
    <a href="index.html">Home</a>
    <a href="about.html">About</a>
    <a href="programs.html">Programs</a>
    <a href="get-involved.html">Get Involved</a>
    <a href="contact.html">Contact</a>
  </nav>
</footer>

<script src="main.js"></script>
</body>
</html>
'@
[System.IO.File]::WriteAllText((Join-Path $dir "get-involved.html"), $getinvolved, $utf8)
Write-Host "Written: get-involved.html"

# ============================================================
# RESOURCES.HTML
# ============================================================
$resources = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Resources &amp; Blog &mdash; CICD</title>
<meta name="description" content="Read the CICD blog for insights on child protection, mental health, gender-based violence, and youth empowerment in Nigeria. Download free resources.">
<meta property="og:title" content="Resources &amp; Blog &mdash; CICD">
<meta property="og:description" content="Insights, stories, and free resources on child protection, mental health, and community development from CICD Nigeria.">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="Resources &amp; Blog &mdash; CICD">
<meta name="twitter:description" content="Insights, stories, and free resources on child protection, mental health, and community development from CICD Nigeria.">
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><circle cx='50' cy='50' r='50' fill='%23e6a800'/><circle cx='50' cy='50' r='42' fill='white'/><rect x='46' y='58' width='8' height='24' rx='3' fill='%231a7a3c'/><ellipse cx='34' cy='50' rx='15' ry='18' fill='%231a7a3c'/><ellipse cx='66' cy='52' rx='13' ry='15' fill='%231a7a3c'/><ellipse cx='50' cy='34' rx='16' ry='18' fill='%231a7a3c'/></svg>" type="image/svg+xml">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<!-- SVG CICD LOGO DEFINITION -->
<svg style="display:none" xmlns="http://www.w3.org/2000/svg" id="cicd-logo-def">
  <symbol id="cicd-logo" viewBox="0 0 100 100">
    <circle cx="50" cy="50" r="48" fill="#e6a800" />
    <circle cx="50" cy="50" r="42" fill="white" />
    <rect x="46" y="60" width="8" height="22" rx="3" fill="#1a7a3c"/>
    <ellipse cx="34" cy="50" rx="15" ry="18" fill="#1a7a3c"/>
    <ellipse cx="66" cy="52" rx="13" ry="15" fill="#1a7a3c"/>
    <ellipse cx="50" cy="36" rx="16" ry="18" fill="#1a7a3c"/>
    <circle cx="50" cy="27" r="4" fill="#e6a800"/>
    <line x1="50" y1="31" x2="50" y2="39" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="44" y1="34" x2="56" y2="34" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="50" y1="39" x2="45" y2="44" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="50" y1="39" x2="55" y2="44" stroke="#e6a800" stroke-width="2.5"/>
    <circle cx="63" cy="51" r="3" fill="#e6a800"/>
    <line x1="63" y1="54" x2="63" y2="60" stroke="#e6a800" stroke-width="2"/>
    <line x1="59" y1="57" x2="67" y2="57" stroke="#e6a800" stroke-width="2"/>
    <line x1="63" y1="60" x2="60" y2="65" stroke="#e6a800" stroke-width="2"/>
    <line x1="63" y1="60" x2="66" y2="65" stroke="#e6a800" stroke-width="2"/>
    <circle cx="34" cy="57" r="3" fill="#e6a800"/>
    <ellipse cx="32" cy="62" rx="6" ry="3" fill="#e6a800"/>
  </symbol>
</svg>

<!-- NAV -->
<nav aria-label="Main navigation">
  <a href="index.html" class="nav-brand">
    <div class="nav-logo-img">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <use href="#cicd-logo"/>
      </svg>
    </div>
    <div class="nav-logo-text">
      <span class="nav-logo-abbr">CICD</span>
      <span class="nav-logo-full">Center for Individual &amp; Child Development</span>
    </div>
  </a>
  <ul class="nav-links" id="nav-menu">
    <li><a href="about.html">About</a></li>
    <li><a href="programs.html">Programs</a></li>
    <li><a href="get-involved.html">Get Involved</a></li>
    <li><a href="resources.html" aria-current="page">Resources</a></li>
    <li><a href="contact.html">Contact</a></li>
    <li><a href="get-involved.html" class="nav-cta">Donate Now</a></li>
  </ul>
  <button class="nav-hamburger" id="nav-hamburger" aria-label="Toggle navigation menu" aria-expanded="false" aria-controls="nav-menu">
    <span></span><span></span><span></span>
  </button>
</nav>

<main>

<!-- RESOURCES SECTION -->
<section id="resources">
  <div class="section-header">
    <h2>Resources &amp; Blog</h2>
    <p class="section-sub">Stories, insights, and tools from the frontlines of community development</p>
  </div>

  <div class="resources-grid">
    <div class="blog-list">

      <article class="blog-card">
        <div class="blog-meta">
          <span class="blog-tag">Child Protection</span>
          <time datetime="2024-10-12">October 2024</time>
        </div>
        <h3>Understanding Child Sexual Abuse: Signs, Prevention, and How to Help</h3>
        <p>One in four girls and one in thirteen boys in Nigeria experience sexual abuse before age 18. Learn the warning signs, how to create safe environments, and the steps survivors and bystanders can take to seek help.</p>
        <a href="contact.html" class="btn btn-outline btn-sm">Read More</a>
      </article>

      <article class="blog-card">
        <div class="blog-meta">
          <span class="blog-tag">Mental Health</span>
          <time datetime="2024-08-05">August 2024</time>
        </div>
        <h3>Why Mental Health Matters for Nigerian Youth</h3>
        <p>Untreated trauma, poverty, and academic pressure are driving a youth mental health crisis. CICD&rsquo;s Walk-In Talk Clinic is providing free support &mdash; and this article breaks down what young people need and where to start.</p>
        <a href="contact.html" class="btn btn-outline btn-sm">Read More</a>
      </article>

      <article class="blog-card">
        <div class="blog-meta">
          <span class="blog-tag">Gender &amp; Rights</span>
          <time datetime="2024-06-20">June 2024</time>
        </div>
        <h3>Girls &amp; Mentors: What Happens When a Young Woman Finds Her Voice</h3>
        <p>Amina was 14 when she joined the Girls &amp; Mentors Hope Rising program. By 16, she was leading her school&rsquo;s Zero Violence Ambassador chapter. This is her story &mdash; and the story of hundreds like her.</p>
        <a href="contact.html" class="btn btn-outline btn-sm">Read More</a>
      </article>

      <article class="blog-card">
        <div class="blog-meta">
          <span class="blog-tag">Community</span>
          <time datetime="2024-03-15">March 2024</time>
        </div>
        <h3>Annual Workshop 2024: What We Learned and What Comes Next</h3>
        <p>Over 300 students, teachers, and community leaders gathered for CICD&rsquo;s Annual Workshop. Here are the key takeaways, the partnerships forged, and our roadmap for the year ahead.</p>
        <a href="contact.html" class="btn btn-outline btn-sm">Read More</a>
      </article>

    </div>

    <aside class="resources-sidebar" aria-label="Impact and downloads">
      <div class="sidebar-widget">
        <h3>Our Impact</h3>
        <ul class="impact-stats">
          <li><span class="impact-num">3</span><span class="impact-label">LGAs Reached</span></li>
          <li><span class="impact-num">110+</span><span class="impact-label">Schools Engaged</span></li>
          <li><span class="impact-num">5</span><span class="impact-label">Active Programs</span></li>
          <li><span class="impact-num">2017</span><span class="impact-label">Year Founded</span></li>
        </ul>
      </div>

      <div class="sidebar-widget">
        <h3>Free Downloads</h3>
        <div class="download-cards">
          <a href="contact.html" class="download-card">
            <span class="download-icon" aria-hidden="true">&#x1F4C4;</span>
            <div>
              <strong>Child Safety Guide</strong>
              <span>For parents &amp; teachers</span>
            </div>
          </a>
          <a href="contact.html" class="download-card">
            <span class="download-icon" aria-hidden="true">&#x1F4C4;</span>
            <div>
              <strong>Zero Violence Toolkit</strong>
              <span>For schools &amp; youth groups</span>
            </div>
          </a>
          <a href="contact.html" class="download-card">
            <span class="download-icon" aria-hidden="true">&#x1F4C4;</span>
            <div>
              <strong>Mental Health 101</strong>
              <span>For young people</span>
            </div>
          </a>
        </div>
        <p class="sidebar-note">Contact us at <a href="mailto:Cicdngo@yahoo.com">Cicdngo@yahoo.com</a> to request full documents.</p>
      </div>
    </aside>
  </div>
</section>

</main>

<!-- FOOTER -->
<footer>
  <div class="footer-brand">
    <div class="footer-logo-circle">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <use href="#cicd-logo"/>
      </svg>
    </div>
    <span class="footer-logo-text">CICD</span>
  </div>
  <p>&copy; 2026 Center for Individual and Child Development &middot; CAC/IT/NO 98428 &middot; All rights reserved.</p>
  <nav aria-label="Footer navigation">
    <a href="index.html">Home</a>
    <a href="about.html">About</a>
    <a href="programs.html">Programs</a>
    <a href="get-involved.html">Get Involved</a>
    <a href="contact.html">Contact</a>
  </nav>
</footer>

<script src="main.js"></script>
</body>
</html>
'@
[System.IO.File]::WriteAllText((Join-Path $dir "resources.html"), $resources, $utf8)
Write-Host "Written: resources.html"

# ============================================================
# CONTACT.HTML
# ============================================================
$contact = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact &mdash; CICD</title>
<meta name="description" content="Get in touch with CICD &mdash; Center for Individual and Child Development. Reach us by phone, email, or social media. We're based in Lagos, Nigeria.">
<meta property="og:title" content="Contact &mdash; CICD">
<meta property="og:description" content="Reach CICD by phone, email, or social media. We'd love to hear from you &mdash; whether you're a partner, donor, or someone seeking support.">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="Contact &mdash; CICD">
<meta name="twitter:description" content="Reach CICD by phone, email, or social media. We'd love to hear from you.">
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><circle cx='50' cy='50' r='50' fill='%23e6a800'/><circle cx='50' cy='50' r='42' fill='white'/><rect x='46' y='58' width='8' height='24' rx='3' fill='%231a7a3c'/><ellipse cx='34' cy='50' rx='15' ry='18' fill='%231a7a3c'/><ellipse cx='66' cy='52' rx='13' ry='15' fill='%231a7a3c'/><ellipse cx='50' cy='34' rx='16' ry='18' fill='%231a7a3c'/></svg>" type="image/svg+xml">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=Nunito:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<!-- SVG CICD LOGO DEFINITION -->
<svg style="display:none" xmlns="http://www.w3.org/2000/svg" id="cicd-logo-def">
  <symbol id="cicd-logo" viewBox="0 0 100 100">
    <circle cx="50" cy="50" r="48" fill="#e6a800" />
    <circle cx="50" cy="50" r="42" fill="white" />
    <rect x="46" y="60" width="8" height="22" rx="3" fill="#1a7a3c"/>
    <ellipse cx="34" cy="50" rx="15" ry="18" fill="#1a7a3c"/>
    <ellipse cx="66" cy="52" rx="13" ry="15" fill="#1a7a3c"/>
    <ellipse cx="50" cy="36" rx="16" ry="18" fill="#1a7a3c"/>
    <circle cx="50" cy="27" r="4" fill="#e6a800"/>
    <line x1="50" y1="31" x2="50" y2="39" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="44" y1="34" x2="56" y2="34" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="50" y1="39" x2="45" y2="44" stroke="#e6a800" stroke-width="2.5"/>
    <line x1="50" y1="39" x2="55" y2="44" stroke="#e6a800" stroke-width="2.5"/>
    <circle cx="63" cy="51" r="3" fill="#e6a800"/>
    <line x1="63" y1="54" x2="63" y2="60" stroke="#e6a800" stroke-width="2"/>
    <line x1="59" y1="57" x2="67" y2="57" stroke="#e6a800" stroke-width="2"/>
    <line x1="63" y1="60" x2="60" y2="65" stroke="#e6a800" stroke-width="2"/>
    <line x1="63" y1="60" x2="66" y2="65" stroke="#e6a800" stroke-width="2"/>
    <circle cx="34" cy="57" r="3" fill="#e6a800"/>
    <ellipse cx="32" cy="62" rx="6" ry="3" fill="#e6a800"/>
  </symbol>
</svg>

<!-- NAV -->
<nav aria-label="Main navigation">
  <a href="index.html" class="nav-brand">
    <div class="nav-logo-img">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <use href="#cicd-logo"/>
      </svg>
    </div>
    <div class="nav-logo-text">
      <span class="nav-logo-abbr">CICD</span>
      <span class="nav-logo-full">Center for Individual &amp; Child Development</span>
    </div>
  </a>
  <ul class="nav-links" id="nav-menu">
    <li><a href="about.html">About</a></li>
    <li><a href="programs.html">Programs</a></li>
    <li><a href="get-involved.html">Get Involved</a></li>
    <li><a href="resources.html">Resources</a></li>
    <li><a href="contact.html" aria-current="page">Contact</a></li>
    <li><a href="get-involved.html" class="nav-cta">Donate Now</a></li>
  </ul>
  <button class="nav-hamburger" id="nav-hamburger" aria-label="Toggle navigation menu" aria-expanded="false" aria-controls="nav-menu">
    <span></span><span></span><span></span>
  </button>
</nav>

<main>

<!-- CONTACT SECTION -->
<section id="contact">
  <div class="section-header">
    <h2>Contact Us</h2>
    <p class="section-sub">We&rsquo;re here to connect, collaborate, and support</p>
  </div>

  <div class="contact-grid">
    <div class="contact-info">
      <h3>Reach Out Directly</h3>
      <p>Whether you&rsquo;re a potential partner, donor, volunteer, or someone looking for support &mdash; we&rsquo;d love to hear from you.</p>

      <ul class="contact-details">
        <li>
          <span class="contact-icon" aria-hidden="true">&#x1F4DE;</span>
          <div>
            <strong>Phone</strong>
            <a href="tel:+2348033918951">08033918951</a>
          </div>
        </li>
        <li>
          <span class="contact-icon" aria-hidden="true">&#x2709;&#xFE0F;</span>
          <div>
            <strong>Email</strong>
            <a href="mailto:Cicdngo@yahoo.com">Cicdngo@yahoo.com</a>
          </div>
        </li>
        <li>
          <span class="contact-icon" aria-hidden="true">&#x1F4D8;</span>
          <div>
            <strong>Facebook</strong>
            <a href="https://facebook.com/Cicdngo" target="_blank" rel="noopener noreferrer">@Cicdngo</a>
          </div>
        </li>
        <li>
          <span class="contact-icon" aria-hidden="true">&#x1F4F8;</span>
          <div>
            <strong>Instagram</strong>
            <a href="https://instagram.com/Cicdngo" target="_blank" rel="noopener noreferrer">@Cicdngo</a>
          </div>
        </li>
        <li>
          <span class="contact-icon" aria-hidden="true">&#x1F4CB;</span>
          <div>
            <strong>CAC Registration</strong>
            <span>CAC/IT/NO 98428</span>
          </div>
        </li>
        <li>
          <span class="contact-icon" aria-hidden="true">&#x1F4CD;</span>
          <div>
            <strong>Location</strong>
            <span>Lagos State, Nigeria</span>
          </div>
        </li>
      </ul>
    </div>

    <div class="contact-form">
      <h3>Send a Message</h3>
      <form action="https://formsubmit.co/Cicdngo@yahoo.com" method="POST" novalidate>
        <input type="hidden" name="_subject" value="New Message via CICD Website">
        <input type="hidden" name="_captcha" value="false">
        <div class="form-group">
          <label for="c-name">Full Name <span aria-hidden="true">*</span></label>
          <input type="text" id="c-name" name="name" required autocomplete="name" placeholder="Your full name">
        </div>
        <div class="form-group">
          <label for="c-email">Email Address <span aria-hidden="true">*</span></label>
          <input type="email" id="c-email" name="email" required autocomplete="email" placeholder="you@example.com">
        </div>
        <div class="form-group">
          <label for="c-subject">Subject <span aria-hidden="true">*</span></label>
          <select id="c-subject" name="subject" required>
            <option value="" disabled selected>Select a subject</option>
            <option value="Partnership">Partnership Enquiry</option>
            <option value="Donation">Donation / Support</option>
            <option value="Volunteering">Volunteering</option>
            <option value="Press">Press / Media</option>
            <option value="Support">Seeking Support</option>
            <option value="Other">Other</option>
          </select>
        </div>
        <div class="form-group">
          <label for="c-message">Message <span aria-hidden="true">*</span></label>
          <textarea id="c-message" name="message" rows="5" required placeholder="How can we help you?"></textarea>
        </div>
        <button type="submit" class="btn btn-gold">Send Message</button>
      </form>
    </div>
  </div>
</section>

</main>

<!-- FOOTER -->
<footer>
  <div class="footer-brand">
    <div class="footer-logo-circle">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <use href="#cicd-logo"/>
      </svg>
    </div>
    <span class="footer-logo-text">CICD</span>
  </div>
  <p>&copy; 2026 Center for Individual and Child Development &middot; CAC/IT/NO 98428 &middot; All rights reserved.</p>
  <nav aria-label="Footer navigation">
    <a href="index.html">Home</a>
    <a href="about.html">About</a>
    <a href="programs.html">Programs</a>
    <a href="get-involved.html">Get Involved</a>
    <a href="contact.html">Contact</a>
  </nav>
</footer>

<script src="main.js"></script>
</body>
</html>
'@
[System.IO.File]::WriteAllText((Join-Path $dir "contact.html"), $contact, $utf8)
Write-Host "Written: contact.html"

Write-Host "All done!"
