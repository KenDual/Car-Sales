<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Change Password</title>
        <link rel="stylesheet" href="<c:url value='/assets/css/styles.css'/>">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 20px;
                overflow-x: hidden;
            }

            /* Animated background particles */
            .background-animation {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                overflow: hidden;
                z-index: -1;
            }

            .particle {
                position: absolute;
                background: rgba(255, 255, 255, 0.1);
                border-radius: 50%;
                animation: float 6s ease-in-out infinite;
            }

            .particle:nth-child(1) {
                width: 20px;
                height: 20px;
                left: 10%;
                animation-delay: 0s;
            }

            .particle:nth-child(2) {
                width: 30px;
                height: 30px;
                left: 20%;
                animation-delay: 2s;
            }

            .particle:nth-child(3) {
                width: 25px;
                height: 25px;
                left: 30%;
                animation-delay: 4s;
            }

            .particle:nth-child(4) {
                width: 15px;
                height: 15px;
                left: 70%;
                animation-delay: 1s;
            }

            .particle:nth-child(5) {
                width: 35px;
                height: 35px;
                left: 80%;
                animation-delay: 3s;
            }

            @keyframes float {
                0%, 100% {
                    transform: translateY(100vh) rotate(0deg);
                    opacity: 0;
                }
                10% {
                    opacity: 1;
                }
                90% {
                    opacity: 1;
                }
                50% {
                    transform: translateY(-100px) rotate(180deg);
                    opacity: 0.8;
                }
            }

            .container {
                background: rgba(255, 255, 255, 0.95);
                backdrop-filter: blur(10px);
                border-radius: 20px;
                padding: 40px;
                box-shadow: 0 25px 50px rgba(0, 0, 0, 0.15);
                width: 100%;
                max-width: 450px;
                animation: slideIn 0.8s ease-out;
                border: 1px solid rgba(255, 255, 255, 0.2);
            }

            @keyframes slideIn {
                from {
                    opacity: 0;
                    transform: translateY(30px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            h2 {
                text-align: center;
                color: #333;
                margin-bottom: 30px;
                font-size: 2.2em;
                font-weight: 600;
                position: relative;
                animation: titleGlow 2s ease-in-out infinite alternate;
            }

            @keyframes titleGlow {
                from {
                    text-shadow: 0 0 5px rgba(102, 126, 234, 0.3);
                }
                to {
                    text-shadow: 0 0 20px rgba(102, 126, 234, 0.6);
                }
            }

            .alert {
                padding: 15px;
                border-radius: 10px;
                margin-bottom: 20px;
                font-weight: 500;
                animation: alertSlide 0.5s ease-out;
            }

            @keyframes alertSlide {
                from {
                    opacity: 0;
                    transform: translateX(-20px);
                }
                to {
                    opacity: 1;
                    transform: translateX(0);
                }
            }

            .alert-success {
                background-color: #d4edda;
                color: #155724;
                border: 1px solid #c3e6cb;
            }

            .alert-danger {
                background-color: #f8d7da;
                color: #721c24;
                border: 1px solid #f5c6cb;
            }

            .form-group {
                margin-bottom: 25px;
                position: relative;
            }

            label {
                display: block;
                margin-bottom: 8px;
                color: #555;
                font-weight: 500;
                font-size: 0.95em;
                transition: color 0.3s ease;
            }

            input[type="password"] {
                width: 100%;
                padding: 15px;
                border: 2px solid #e0e0e0;
                border-radius: 10px;
                font-size: 16px;
                transition: all 0.3s ease;
                background: rgba(255, 255, 255, 0.9);
                position: relative;
            }

            input[type="password"]:focus {
                outline: none;
                border-color: #667eea;
                box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
                transform: translateY(-2px);
            }

            input[type="password"]:focus + .input-highlight {
                width: 100%;
            }

            .input-highlight {
                position: absolute;
                bottom: 0;
                left: 50%;
                width: 0;
                height: 2px;
                background: linear-gradient(90deg, #667eea, #764ba2);
                transition: all 0.3s ease;
                transform: translateX(-50%);
            }

            /* Password strength indicator */
            .password-strength {
                margin-top: 8px;
                padding: 0;
                opacity: 0;
                transition: opacity 0.3s ease;
            }

            .password-strength.show {
                opacity: 1;
            }

            .strength-bar {
                height: 4px;
                background: #e0e0e0;
                border-radius: 2px;
                overflow: hidden;
            }

            .strength-fill {
                height: 100%;
                width: 0%;
                transition: all 0.3s ease;
                border-radius: 2px;
            }

            .strength-weak {
                background: #ff4757;
            }
            .strength-fair {
                background: #ffa502;
            }
            .strength-good {
                background: #3742fa;
            }
            .strength-strong {
                background: #2ed573;
            }

            .strength-text {
                font-size: 0.85em;
                margin-top: 4px;
                font-weight: 500;
            }

            /* Password match indicator */
            .password-match {
                position: absolute;
                right: 15px;
                top: 50%;
                transform: translateY(-50%);
                font-size: 1.2em;
                opacity: 0;
                transition: opacity 0.3s ease;
            }

            .password-match.show {
                opacity: 1;
            }

            .match-success {
                color: #2ed573;
            }
            .match-error {
                color: #ff4757;
            }

            button {
                width: 100%;
                padding: 15px;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                color: white;
                border: none;
                border-radius: 10px;
                font-size: 16px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.3s ease;
                position: relative;
                overflow: hidden;
                margin-top: 10px;
                opacity: 0.6;
                pointer-events: none;
            }

            button.enabled {
                opacity: 1;
                pointer-events: auto;
            }

            button::before {
                content: '';
                position: absolute;
                top: 0;
                left: -100%;
                width: 100%;
                height: 100%;
                background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
                transition: left 0.5s ease;
            }

            button:hover.enabled {
                transform: translateY(-2px);
                box-shadow: 0 10px 25px rgba(102, 126, 234, 0.3);
            }

            button:hover.enabled::before {
                left: 100%;
            }

            button:active.enabled {
                transform: translateY(0);
            }

            .back-link {
                text-align: center;
                margin-top: 25px;
                color: #666;
                font-size: 0.95em;
            }

            .back-link a {
                color: #667eea;
                text-decoration: none;
                font-weight: 600;
                transition: all 0.3s ease;
                position: relative;
            }

            .back-link a::after {
                content: '';
                position: absolute;
                bottom: -2px;
                left: 0;
                width: 0;
                height: 2px;
                background: linear-gradient(90deg, #667eea, #764ba2);
                transition: width 0.3s ease;
            }

            .back-link a:hover::after {
                width: 100%;
            }

            .back-link a:hover {
                color: #764ba2;
            }

            /* Security tips */
            .security-tips {
                background: rgba(102, 126, 234, 0.1);
                border: 1px solid rgba(102, 126, 234, 0.2);
                border-radius: 10px;
                padding: 15px;
                margin-top: 20px;
                font-size: 0.9em;
                color: #555;
            }

            .security-tips h4 {
                color: #667eea;
                margin-bottom: 8px;
                font-size: 1em;
            }

            .security-tips ul {
                list-style: none;
                padding-left: 0;
            }

            .security-tips li {
                padding: 2px 0;
                position: relative;
                padding-left: 15px;
            }

            .security-tips li::before {
                content: '•';
                color: #667eea;
                position: absolute;
                left: 0;
            }

            /* Responsive design */
            @media (max-width: 480px) {
                .container {
                    padding: 30px 20px;
                    margin: 10px;
                }

                h2 {
                    font-size: 1.8em;
                }
            }

            /* Loading animation for form submission */
            .loading {
                opacity: 0.7;
                pointer-events: none;
            }

            .loading button {
                background: #ccc;
                cursor: not-allowed;
            }

            /* Pulse animation for required fields */
            input:invalid {
                animation: pulse 2s infinite;
            }

            @keyframes pulse {
                0% {
                    box-shadow: 0 0 0 0 rgba(102, 126, 234, 0.4);
                }
                70% {
                    box-shadow: 0 0 0 10px rgba(102, 126, 234, 0);
                }
                100% {
                    box-shadow: 0 0 0 0 rgba(102, 126, 234, 0);
                }
            }

            /* Show/hide password toggle */
            .password-toggle {
                position: absolute;
                right: 15px;
                top: 50%;
                transform: translateY(-50%);
                background: none;
                border: none;
                color: #666;
                cursor: pointer;
                font-size: 1.2em;
                transition: all 0.3s ease;
                padding: 0;
                width: auto;
                margin: 0;
                opacity: 0;
                visibility: hidden;
            }

            .password-toggle.show {
                opacity: 1;
                visibility: visible;
            }

            .password-toggle:hover {
                color: #667eea;
                transform: translateY(-50%) scale(1.1);
            }
        </style>
    </head>
    <body>
        <!-- Animated background -->
        <div class="background-animation">
            <div class="particle"></div>
            <div class="particle"></div>
            <div class="particle"></div>
            <div class="particle"></div>
            <div class="particle"></div>
        </div>

        <div class="container">
            <h2>Change Password</h2>

            <!-- Flash messages -->
            <c:if test="${not empty message}">
                <div class="alert alert-success">${message}</div>
            </c:if>
            <c:if test="${not empty error}">
                <div class="alert alert-danger">${error}</div>
            </c:if>

            <form action="<c:url value='/auth/change-password'/>" method="post" id="changePasswordForm">
                <div class="form-group">
                    <label for="currentPassword">Current Password</label>
                    <input type="password" id="currentPassword" name="currentPassword" required>
                    <button type="button" class="password-toggle" onclick="togglePassword('currentPassword')">️</button>
                    <div class="input-highlight"></div>
                </div>

                <div class="form-group">
                    <label for="newPassword">New Password</label>
                    <input type="password" id="newPassword" name="newPassword" required>
                    <button type="button" class="password-toggle" onclick="togglePassword('newPassword')">️</button>
                    <div class="input-highlight"></div>
                    <div class="password-strength" id="passwordStrength">
                        <div class="strength-bar">
                            <div class="strength-fill" id="strengthFill"></div>
                        </div>
                        <div class="strength-text" id="strengthText"></div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="confirmPassword">Confirm New Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                    <button type="button" class="password-toggle" onclick="togglePassword('confirmPassword')">️</button>
                    <div class="input-highlight"></div>
                    <div class="password-match" id="passwordMatch"></div>
                </div>

                <button type="submit" id="submitButton">Change Password</button>
            </form>

            <div class="security-tips">
                <h4>Password Security Tips:</h4>
                <ul>
                    <li>Use at least 8 characters</li>
                    <li>Include uppercase and lowercase letters</li>
                    <li>Add numbers and special characters</li>
                    <li>Avoid common words or personal information</li>
                </ul>
            </div>

            <div class="back-link">
                <p><a href="<c:url value='/dashboard'/>">← Back to Dashboard</a></p>
            </div>
        </div>

        <script>
            // Password strength checker
            function checkPasswordStrength(password) {
                const strength = document.getElementById('passwordStrength');
                const fill = document.getElementById('strengthFill');
                const text = document.getElementById('strengthText');

                if (password.length === 0) {
                    strength.classList.remove('show');
                    return;
                }

                strength.classList.add('show');

                let score = 0;
                let feedback = '';

                // Length check
                if (password.length >= 8)
                    score += 25;
                if (password.length >= 12)
                    score += 25;

                // Character variety checks
                if (/[a-z]/.test(password))
                    score += 12.5;
                if (/[A-Z]/.test(password))
                    score += 12.5;
                if (/[0-9]/.test(password))
                    score += 12.5;
                if (/[^a-zA-Z0-9]/.test(password))
                    score += 12.5;

                // Set strength level
                if (score < 30) {
                    fill.className = 'strength-fill strength-weak';
                    fill.style.width = '25%';
                    feedback = 'Weak';
                } else if (score < 60) {
                    fill.className = 'strength-fill strength-fair';
                    fill.style.width = '50%';
                    feedback = 'Fair';
                } else if (score < 90) {
                    fill.className = 'strength-fill strength-good';
                    fill.style.width = '75%';
                    feedback = 'Good';
                } else {
                    fill.className = 'strength-fill strength-strong';
                    fill.style.width = '100%';
                    feedback = 'Strong';
                }

                text.textContent = feedback;
                text.style.color = getComputedStyle(fill).backgroundColor;
            }

            // Password match checker
            function checkPasswordMatch() {
                const newPassword = document.getElementById('newPassword').value;
                const confirmPassword = document.getElementById('confirmPassword').value;
                const matchIndicator = document.getElementById('passwordMatch');

                if (confirmPassword.length === 0) {
                    matchIndicator.classList.remove('show');
                    return false;
                }

                matchIndicator.classList.add('show');

                if (newPassword === confirmPassword) {
                    matchIndicator.innerHTML = '✓';
                    matchIndicator.className = 'password-match show match-success';
                    return true;
                } else {
                    matchIndicator.innerHTML = '✗';
                    matchIndicator.className = 'password-match show match-error';
                    return false;
                }
            }

            // Form validation
            function validateForm() {
                const currentPassword = document.getElementById('currentPassword').value;
                const newPassword = document.getElementById('newPassword').value;
                const confirmPassword = document.getElementById('confirmPassword').value;
                const submitButton = document.getElementById('submitButton');

                const isValid = currentPassword.length > 0 &&
                        newPassword.length >= 8 &&
                        newPassword === confirmPassword;

                if (isValid) {
                    submitButton.classList.add('enabled');
                } else {
                    submitButton.classList.remove('enabled');
                }
            }

            // Toggle password visibility
            function togglePassword(inputId) {
                const input = document.getElementById(inputId);
                const button = input.nextElementSibling;

                if (input.type === 'password') {
                    input.type = 'text';
                    button.innerHTML = '🙈';
                } else {
                    input.type = 'password';
                    button.innerHTML = '👁️';
                }
            }

            // Toggle eye visibility based on input content
            function toggleEyeVisibility(inputId) {
                const input = document.getElementById(inputId);
                const toggle = input.nextElementSibling;

                if (input.value.length > 0) {
                    toggle.classList.add('show');
                } else {
                    toggle.classList.remove('show');
                    // Reset to password type when hiding
                    input.type = 'password';
                    toggle.innerHTML = '👁️';
                }
            }

            // Event listeners
            document.getElementById('newPassword').addEventListener('input', function () {
                checkPasswordStrength(this.value);
                checkPasswordMatch();
                validateForm();
                toggleEyeVisibility('newPassword');
            });

            document.getElementById('confirmPassword').addEventListener('input', function () {
                checkPasswordMatch();
                validateForm();
                toggleEyeVisibility('confirmPassword');
            });

            document.getElementById('currentPassword').addEventListener('input', function () {
                validateForm();
                toggleEyeVisibility('currentPassword');
            });

            // Hide eye when clicking outside and input is empty
            document.addEventListener('click', function (e) {
                const passwordInputs = ['currentPassword', 'newPassword', 'confirmPassword'];

                passwordInputs.forEach(inputId => {
                    const input = document.getElementById(inputId);
                    const toggle = input.nextElementSibling;

                    if (!input.contains(e.target) && !toggle.contains(e.target)) {
                        if (input.value.length === 0) {
                            toggle.classList.remove('show');
                            input.type = 'password';
                            toggle.innerHTML = '️';
                        }
                    }
                });
            });

            // Form submission
            document.getElementById('changePasswordForm').addEventListener('submit', function (e) {
                const submitButton = document.getElementById('submitButton');

                if (!submitButton.classList.contains('enabled')) {
                    e.preventDefault();
                    return false;
                }

                // Add loading state
                this.classList.add('loading');
                submitButton.innerHTML = 'Changing Password...';
            });

            // Add floating label effect
            document.querySelectorAll('input').forEach(input => {
                input.addEventListener('focus', function () {
                    this.parentElement.querySelector('label').style.color = '#667eea';
                });

                input.addEventListener('blur', function () {
                    this.parentElement.querySelector('label').style.color = '#555';
                });
            });

            // Add particle movement on mouse move
            document.addEventListener('mousemove', function (e) {
                const particles = document.querySelectorAll('.particle');
                const x = e.clientX / window.innerWidth;
                const y = e.clientY / window.innerHeight;

                particles.forEach((particle, index) => {
                    const speed = (index + 1) * 0.5;
                    const xMove = (x - 0.5) * speed;
                    const yMove = (y - 0.5) * speed;

                    particle.style.transform = `translate(${xMove}px, ${yMove}px)`;
                });
            });

            // Initialize form validation
            validateForm();
        </script>
    </body>
</html>