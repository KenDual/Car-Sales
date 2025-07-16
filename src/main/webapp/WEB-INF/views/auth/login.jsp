<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
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
                max-width: 400px;
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

            input[type="email"],
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

            input[type="email"]:focus,
            input[type="password"]:focus {
                outline: none;
                border-color: #667eea;
                box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
                transform: translateY(-2px);
            }

            input[type="email"]:focus + .input-highlight,
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

            button:hover {
                transform: translateY(-2px);
                box-shadow: 0 10px 25px rgba(102, 126, 234, 0.3);
            }

            button:hover::before {
                left: 100%;
            }

            button:active {
                transform: translateY(0);
            }

            .signup-link {
                text-align: center;
                margin-top: 25px;
                color: #666;
                font-size: 0.95em;
            }

            .signup-link a {
                color: #667eea;
                text-decoration: none;
                font-weight: 600;
                transition: all 0.3s ease;
                position: relative;
            }

            .signup-link a::after {
                content: '';
                position: absolute;
                bottom: -2px;
                left: 0;
                width: 0;
                height: 2px;
                background: linear-gradient(90deg, #667eea, #764ba2);
                transition: width 0.3s ease;
            }

            .signup-link a:hover::after {
                width: 100%;
            }

            .signup-link a:hover {
                color: #764ba2;
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
            <h2>Welcome Back</h2>

            <!-- Flash messages -->
            <c:if test="${not empty message}">
                <div class="alert alert-success">${message}</div>
            </c:if>
            <c:if test="${not empty error}">
                <div class="alert alert-danger">${error}</div>
            </c:if>

            <form action="<c:url value='/auth/login'/>" method="post" id="loginForm">
                <div class="form-group">
                    <label for="email">E-mail</label>
                    <input type="email" id="email" name="email" required>
                    <div class="input-highlight"></div>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                    <div class="input-highlight"></div>
                </div>

                <button type="submit">Sign In</button>
            </form>

            <div class="signup-link">
                <p>Don't have an account? 
                    <a href="<c:url value='/auth/sign-up'/>">Create one here</a>
                </p>
            </div>
        </div>

        <script>
            // Add form submission animation
            document.getElementById('loginForm').addEventListener('submit', function (e) {
                const form = this;
                const button = form.querySelector('button');

                // Add loading state
                form.classList.add('loading');
                button.innerHTML = 'Signing in...';

                // Note: In a real application, you might want to prevent the default
                // and handle the submission via AJAX for better UX
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

            // Add keyboard shortcuts
            document.addEventListener('keydown', function (e) {
                if (e.key === 'Enter' && e.ctrlKey) {
                    document.getElementById('loginForm').submit();
                }
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
        </script>
    </body>
</html>