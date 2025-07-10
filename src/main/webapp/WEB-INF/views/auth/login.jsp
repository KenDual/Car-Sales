<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <link rel="stylesheet" href="./output.css" />
        <link rel="stylesheet" href="./style.css" />
    </head>

    <body class="bg-gray-50">
        <!-- ========== HEADER ========== -->
        <header class="fixed top-0 left-0 right-0 z-50 bg-white shadow-sm">
            <nav class="flex items-center justify-between p-4 lg:px-8">
                <a href="/" class="text-2xl font-bold">RENTY</a>
                <a href="./sign-up.html"
                   class="hidden lg:block px-6 py-1 text-sm text-gray-800 border border-gray-800 hover:bg-gray-800 hover:text-white">
                    Sign up
                </a>
            </nav>
        </header>

        <!-- ========== LOGIN FORM ========== -->
        <main class="flex items-center justify-center min-h-screen pt-16">
            <div class="bg-white w-full max-w-md p-8 shadow-md rounded">
                <h1 class="text-2xl font-bold text-center mb-6">Login to your account</h1>

                <form action="/auth/login" method="post" class="space-y-5">
                    <div>
                        <label class="block text-gray-700 mb-1" for="email">Email</label>
                        <input type="email" id="email" name="email" required
                               class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-600" />
                    </div>

                    <div>
                        <label class="block text-gray-700 mb-1" for="password">Password</label>
                        <input type="password" id="password" name="password" required
                               class="w-full border border-gray-300 rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-600" />
                    </div>

                    <button type="submit"
                            class="w-full bg-indigo-700 hover:bg-indigo-800 text-white py-2 rounded font-semibold">
                        Login
                    </button>
                </form>

                <p class="text-center text-sm text-gray-600 mt-6">
                    Don?t have an account?
                    <a class="text-indigo-700 font-medium hover:underline" href="./sign-up.html">Sign up</a>
                </p>
            </div>
        </main>
    </body>
</html>
