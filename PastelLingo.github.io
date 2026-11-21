<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PastelLingo - Học Ngoại Ngữ</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#e8d5f2',
                        secondary: '#d4e9d0',
                        accent: '#f9e8d2',
                        text: '#5a4b66',
                    },
                    fontFamily: {
                        sans: ['Quicksand', 'sans-serif'],
                    },
                }
            }
        }
    </script>
    <style type="text/tailwindcss">
        @layer utilities {
            .card-shadow {
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            }
            .flip-card {
                perspective: 1000px;
            }
            .flip-card-inner {
                transition: transform 0.6s;
                transform-style: preserve-3d;
            }
            .flip-card.flipped .flip-card-inner {
                transform: rotateY(180deg);
            }
            .flip-card-front, .flip-card-back {
                backface-visibility: hidden;
            }
            .flip-card-back {
                transform: rotateY(180deg);
            }
        }
    </style>
</head>
<body class="bg-gradient-to-br from-primary/30 to-secondary/30 min-h-screen font-sans text-text">
    <header class="container mx-auto px-4 py-6">
        <div class="flex justify-between items-center">
            <h1 class="text-[clamp(1.5rem,4vw,2.5rem)] font-bold flex items-center gap-2">
                <span class="w-10 h-10 rounded-full bg-secondary flex items-center justify-center">
                    <i class="fa fa-leaf text-lg"></i>
                </span>
                PastelLingo
            </h1>
            <div class="flex items-center gap-3">
                <button class="bg-white/60 px-4 py-2 rounded-full hover:bg-white/80 transition">
                    <i class="fa fa-bell-o mr-1"></i> Thông báo
                </button>
                <div class="w-10 h-10 rounded-full bg-accent flex items-center justify-center cursor-pointer">
                    <i class="fa fa-user"></i>
                </div>
            </div>
        </div>
    </header>

    <main class="container mx-auto px-4 pb-20">
        <div class="bg-white/60 rounded-2xl p-6 mb-8 card-shadow">
            <div class="flex flex-col md:flex-row justify-between items-start md:items-center gap-4 mb-6">
                <div>
                    <h2 class="text-xl font-semibold mb-1">Tiến độ học hôm nay</h2>
                    <p class="text-sm opacity-70">Tiếp tục cố gắng nhé! 💪</p>
                </div>
                <div class="flex items-center gap-4">
                    <div class="text-center">
                        <div class="text-2xl font-bold">15/20</div>
                        <div class="text-xs opacity-70">Từ mục tiêu</div>
                    </div>
                    <div class="w-20 h-20 relative">
                        <svg class="w-full h-full" viewBox="0 0 36 36">
                            <path d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" fill="none" stroke="#e0e0e0" stroke-width="3"/>
                            <path d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" fill="none" stroke="#94cf87" stroke-width="3" stroke-dasharray="25, 100"/>
                        </svg>
                        <div class="absolute inset-0 flex items-center justify-center text-sm font-bold">75%</div>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="text-xl font-semibold mb-4">Thẻ từ vựng hôm nay</h2>
        <div class="max-w-lg mx-auto mb-8">
            <div id="flashcard" class="flip-card w-full h-64 cursor-pointer" onclick="this.classList.toggle('flipped')">
                <div class="flip-card-inner relative w-full h-full">
                    <div class="flip-card-front absolute w-full h-full bg-white rounded-2xl card-shadow flex flex-col items-center justify-center p-6">
                        <h3 class="text-3xl font-bold mb-2">Xin chào</h3>
                        <p class="text-sm opacity-60">Nhấp để xem nghĩa</p>
                    </div>
                    <div class="flip-card-back absolute w-full h-full bg-secondary/50 rounded-2xl card-shadow flex flex-col items-center justify-center p-6">
                        <h3 class="text-2xl font-bold mb-2">Hello</h3>
                        <p class="text-sm text-center">Dùng khi chào hỏi ai đó</p>
                    </div>
                </div>
            </div>
            <div class="flex justify-center gap-4 mt-6">
                <button class="px-6 py-3 bg-red-100 text-red-600 rounded-full hover:bg-red-200 transition">
                    <i class="fa fa-times mr-1"></i> Chưa nhớ
                </button>
                <button class="px-6 py-3 bg-green-100 text-green-600 rounded-full hover:bg-green-200 transition">
                    <i class="fa fa-check mr-1"></i> Đã nhớ
                </button>
            </div>
        </div>

        <h2 class="text-xl font-semibold mb-4">Chức năng chính</h2>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
            <div class="bg-white/60 rounded-xl p-4 card-shadow text-center hover:bg-white/80 transition cursor-pointer">
                <i class="fa fa-folder-open text-2xl mb-2 text-purple-400"></i>
                <h3 class="font-medium">Thư mục</h3>
            </div>
            <div class="bg-white/60 rounded-xl p-4 card-shadow text-center hover:bg-white/80 transition cursor-pointer">
                <i class="fa fa-plus-circle text-2xl mb-2 text-green-400"></i>
                <h3 class="font-medium">Thêm từ</h3>
            </div>
            <div class="bg-white/60 rounded-xl p-4 card-shadow text-center hover:bg-white/80 transition cursor-pointer">
                <i class="fa fa-gamepad text-2xl mb-2 text-blue-400"></i>
                <h3 class="font-medium">Trò chơi</h3>
            </div>
            <div class="bg-white/60 rounded-xl p-4 card-shadow text-center hover:bg-white/80 transition cursor-pointer">
                <i class="fa fa-bar-chart text-2xl mb-2 text-orange-400"></i>
                <h3 class="font-medium">Tiến độ</h3>
            </div>
        </div>
    </main>

    <nav class="fixed bottom-0 left-0 right-0 bg-white/80 backdrop-blur-sm border-t py-3 px-6">
        <div class="max-w-lg mx-auto flex justify-between items-center">
            <a href="#" class="flex flex-col items-center gap-1 text-purple-500">
                <i class="fa fa-home text-lg"></i>
                <span class="text-xs">Trang chủ</span>
            </a>
            <a href="#" class="flex flex-col items-center gap-1 opacity-60 hover:opacity-100">
                <i class="fa fa-book text-lg"></i>
                <span class="text-xs">Học</span>
            </a>
            <a href="#" class="flex flex-col items-center gap-1 opacity-60 hover:opacity-100">
                <i class="fa fa-plus-circle text-lg"></i>
                <span class="text-xs">Thêm</span>
            </a>
            <a href="#" class="flex flex-col items-center gap-1 opacity-60 hover:opacity-100">
                <i class="fa fa-area-chart text-lg"></i>
                <span class="text-xs">Thống kê</span>
            </a>
            <a href="#" class="flex flex-col items-center gap-1 opacity-60 hover:opacity-100">
                <i class="fa fa-user-o text-lg"></i>
                <span class="text-xs">Tôi</span>
            </a>
        </div>
    </nav>
</body>
</html>
