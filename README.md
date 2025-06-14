# 💻 Web Page Project Demo

![PHP](https://img.shields.io/badge/PHP-Ready-blue)
![Selenium](https://img.shields.io/badge/Selenium-Integrated-green)
![PHPUnit](https://img.shields.io/badge/PHPUnit-Tested-success)
[![Run PHPUnit + Selenium Tests](https://github.com/DalondaIkhimokpa/HTML-CSS-JS-WebDemo-AutomationTesting/actions/workflows/test-html-form.yml/badge.svg)](https://github.com/DalondaIkhimokpa/HTML-CSS-JS-WebDemo-AutomationTesting/actions/workflows/test-html-form.yml)
[![Vercel Status](https://vercelbadge.vercel.app/api/dalondaikhimokpa/html_course)](https://html_course.vercel.app)

![Website Screenshot](assets/img/luca-bravo-XJXWbfSo2f0-unsplash.jpg)

A demonstration website showcasing HTML, CSS, and form processing with PHP.

## 🛠️ Recent Fixes & Improvements
- Fixed JavaScript file path resolution between `assets.js/` and `assets/js/`
- Updated form handler to properly return test responses
- Resolved missing image file issues
- Improved test reliability and logging

## 👀 Features
- **Responsive Design**: Works on various screen sizes
- **Form Processing**: PHP form handler with validation
- **Automated Testing**: Comprehensive test suite
- **Multiple Pages**: 
  - Home page with introduction
  - About page with project information
  - Projects page
  - Resources page

## 🖥️ Technologies Used
- HTML5
- CSS3
- PHP (for form processing)
- JavaScript (for interactivity)
- Bash (for testing scripts)
- GitHub Actions (for CI/CD)

## 📁 Project Structure

## web-page-project/

├── index.html              # Main homepage
├── about.html              # About the project
├── projects.html           # My coding projects
├── resources.html          # Learning resources
├── info.html               # info page
├── form_test.php           # PHP form for testing
├── form-handler.php        # Form processor
├── test-links.php          # HTML form testing
├── assets/
│   ├── img/                # Website images
│   └── log/                # Logo and favicon
├── assets/
│ ├── js/ main.js,         # JavaScript files     
├── main.css                # Main stylesheet
├── .github/
│   └── workflows/
│       └── test.yml        # CI/CD pipeline
├── form-handler.php        # Updated form processor
├── tests/
│ ├── selenium/             # Browser tests
│ └── unit/                 # PHP unit tests
├── scripts/
│ ├── run-tests-all.sh        # Main test runner
│ ├── run-tests-js-css.sh     # JS/CSS validator
│ └── ...                     # Other test scripts
├── logs/                     # Test output logs
├──phpunit.xml
├── LICENSE                   # MIT License
└── README.md                 # This file

## 🔍 Testing & Bug Logging

### 1️⃣ Manual Test Execution

** Make scripts executable:**

```bash
chmod +x run-tests.sh run-tests-links.sh run-tests-html.sh
```

 **Run all tests:**

./run-tests-all.sh
./run-tests-js-css  
./run-tests-links.sh
./run-tests-html.sh
./run-tests.core.sh

**Run specific test:**
### 2️⃣  Unit Tests with PHPUnit
- **Environment**: PHP 7.4, PHPUnit 9.5, PHPUnit 9.

### 3️⃣ Integration Tests with Selenium WebDriver

- **Browser**: Chrome (headless)
- **Environment**: Chrome (headless)

### 4️⃣ Automated Testing with GitHub Actions

- **CI/CD Workflow**: This project integrates GitHub Actions to automatically run all tests and deploy the site.
- **Setup**: The workflow is defined in `.github/workflows/test.yml`.
- **Trigger**: Runs on every push to the `main` branch.

```

```

#### 📋 How to View Workflow Status

- The badge at the top of the README indicates the current CI status.
- Click the badge or go to the **Actions** tab in GitHub to see detailed logs.

#### 🧪 What’s Tested

- **Links and Images**: Checked for validity (no broken links, missing images).
- **HTML Validation**: Ensures semantic structure and required attributes (e.g., `alt` for images).
- **Accessibility**: Checks for ARIA labels and heading hierarchy.

#### 📜 Example Defect Logs

During testing, any detected issues will be logged into the following files:

- `defects-links.log` – Logs for broken links and images.
- `defects-html.log` – Logs for HTML validation and accessibility errors.

**Example log entries**:

```
[TEST 1] HTML Validation:
Error: The value of the “for” attribute of the “label” element must be the ID of a non-hidden form control.
From line 280, column 5; to line 280, column 22
There were errors.
```

```
[TEST 2] Missing Alt Attributes Check:
MISSING ALT ATTRIBUTE: <img src="assets/img/luca-bravo-XJXWbfSo2f0-unsplash.jpg" title="Computer Screen for Programmer" width="640" height="427" loading="lazy">
```

## 🐛Defect Logging

- **HTML & Accessibility Defects:** `defects-html.log`
- **Link & Image Defects:** `defects-links.log`

## 🚀 CI/CD Integration

- The project includes a GitHub Actions workflow to:
- Run all tests on push
- Deploy to Vercel

## 📝Resource Categories

- HTML & CSS: W3Schools, MDN, HTML Reference, CSS Reference
- JavaScript: Modern JS Tutorial, Eloquent JS, Codewars, LeetCode
- Development Tools: VS Code, Sublime Text, Atom, Chrome DevTools
- Communities: Stack Overflow, DEV, Austin Web Developers Group

## 🐛 Debugging Tips
If tests fail:

Check the specific log file in logs/

Verify paths match between:

HTML files

Test scripts

Actual file locations

Ensure all required services are running:

- PHP server 
php -S localhost:8080 &
chromedriver --port=9515 &

## 🚀 Deployment
The CI/CD pipeline:

Runs all test suites

Validates links and resources

Deploys to Vercel on success

## 📝 Key Lessons Implemented
Proper file path management

Cross-platform test reliability

Clear test output formatting

Automated environment verification

text

Key changes made:
1. Added "Recent Fixes" section highlighting the path resolution
2. Updated project structure to reflect current layout
3. Added specific testing instructions
4. Included debugging tips for common issues
5. Clarified test requirements and dependencies
6. Organized the document to emphasize the testing workflow

The README now accurately reflects both the project's current state and the solutions we implemented to fix the test issues.


## 🧐Resources Links

### ⚙ Free Web Dev Tools

- 🔗 [Google Chrome Web Browser](https://google.com/chrome/)
- 🔗 [Dark New Tab Chrome Extension](https://chrome.google.com/webstore/detail/dark-new-tab/kcphhkbdlfggickaoeiahdcfhagfbajl?hl=en)
- 🔗 [Visual Studio Code (aka VS Code)](https://code.visualstudio.com/)
- 🔗 [Live Server VS Code Extension](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
- 🔗 [Prettier VS Code Extension](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- 🔗 [vscode-icons VS Code Extension](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
- 🔗 [Github Themes VS Code Extension](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme)
- 🔗 [W3C HTML Validator](https://validator.w3.org/)
- 🔗 [HTML5 Outliner](https://chrome.google.com/webstore/detail/html5-outliner/afoibpobokebhgfnknfndkgemglggomo)

### 📚 References

- 🔗 [MDN: HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)
- 🔗 [MDN: HTML Elements Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
- 🔗 [HTML Entities Character Chart](https://html.spec.whatwg.org/multipage/named-characters.html#named-character-references)
- 🔗 [MDN Web Glossary: Semantics](https://developer.mozilla.org/en-US/docs/Glossary/Semantics)
- 🔗 [w3Schools: Semantic HTML](https://www.w3schools.com/html/html5_semantic_elements.asp)
- 🔗 [MDN: Document and Website Structure](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Document_and_website_structure)

### 🖼️ Image Resources:

- Placeholder Image Generators:
  - 🔗 [21 of the Best](https://loremipsum.io/21-of-the-best-placeholder-image-generators/)
- Sites with Freely-Usable Images:
  - 🔗 [Unsplash.com](https://unsplash.com/)
  - 🔗 [Pexels.com](https://www.pexels.com/)
  - 🔗 [Gratisography.com](https://gratisography.com/)
  - 🔗 [Pixabay.com](https://pixabay.com/)
- Image Editing / Resizing Software:
  - 🔗 For Windows: [Irfanview](https://www.irfanview.com/)
  - 🔗 As a Service: [Canva.com](https://www.canva.com/)
  - 🔗 [Suggestions for Macs](https://www.cleverfiles.com/howto/top-5-photo-editing-apps-mac.html)
- Full Featured Editor for Windows/Mac/Linux:
  - 🔗 [Gimp](https://www.gimp.org/)
- Image Compression (shrink file size):
  - 🔗 [TinyPNG](https://tinypng.com/)

### 📚 HTML Table References:

- 🔗 [MDN: Table Basics](https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables/Basics)
- 🔗 [MDN: Advanced Tables and Accessibility](https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables/Advanced)

### 📚 HTML Forms References:

- 🔗 [MDN: Web Forms](https://developer.mozilla.org/en-US/docs/Learn/Forms)
- 🔗 [MDN: Form Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form)

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/DalondaIkhimokpa/web-page-project.git
   ```
