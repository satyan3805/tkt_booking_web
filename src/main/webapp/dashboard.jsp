<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f9fafb;
    color: #333;
}

#main-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
    background-color: #1f2937;
    color: white;
    border-bottom: 2px solid #ef4444;
}

#main-header img {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    border: 2px solid #ef4444;
}

#main-header input[type="text"] {
    padding: 8px;
    margin: 0 5px;
    border: 2px solid #ef4444;
    border-radius: 5px;
    font-size: 14px;
    transition: border-color 0.3s;
}

#main-header input[type="text"]:focus {
    border-color: #dc2626;
    outline: none;
}

#main-header button {
    padding: 8px 16px;
    border: 2px solid #ef4444;
    background-color: #ef4444;
    color: white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    border-radius: 10px;
    transition: background-color 0.3s;
}

#main-header button:hover {
    background-color: #dc2626;
}

#main-body {
    padding: 20px;
}

#main-showcase {
    text-align: center;
}

#main-showcase h1 {
    font-size: 28px;
    margin-bottom: 20px;
    color: #1f2937;
}

.card-container {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
    padding: 10px;
}

.box {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    height: 350px;
}

.box:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
}

.box img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 8px;
    margin-bottom: 15px;
}

.box h4 {
    font-size: 18px;
    color: #4b5563;
    margin: 5px 0;
}

.box .rating {
    font-size: 16px;
    color: #ef4444;
}

#main-footer {
    text-align: center;
    padding: 10px;
    background-color: #1f2937;
    color: white;
    font-size: 14px;
}

#main-footer p {
    margin-top: 5px;
}

    </style>
</head>

<body>
    <header id="main-header">
        <img src="" alt="Logo">
        <input type="text" placeholder="Search movies">
        <input type="text" placeholder="Search theatres">
        <button>Profile</button>
    </header>
    <main id="main-body">
        <section id="main-showcase">
            <h1>Movies</h1>
            <div class="card-container">
                <div class="box">
                    <img src="" alt="Movie 1 image">
                    <h4>Movie Name: Movie 1</h4>
                    <h4>Movie Rating: ★★★★☆</h4>
                </div>
                <div class="box">
                    <img src="" alt="Movie 2 image">
                    <h4>Movie Name: Movie 2</h4>
                    <h4>Movie Rating: ★★★★☆</h4>
                </div>
                <div class="box">
                    <img src="" alt="Movie 3 image">
                    <h4>Movie Name: Movie 3</h4>
                    <h4>Movie Rating: ★★★★☆</h4>
                </div>
                <div class="box">
                    <img src="" alt="Movie 4 image">
                    <h4>Movie Name: Movie 4</h4>
                    <h4>Movie Rating: ★★★★☆</h4>
                </div>
                <div class="box">
                    <img src="" alt="Movie 5 image">
                    <h4>Movie Name: Movie 5</h4>
                    <h4>Movie Rating: ★★★★☆</h4>
                </div>
                <div class="box">
                    <img src="" alt="Movie 6 image">
                    <h4>Movie Name: Movie 6</h4>
                    <h4>Movie Rating: ★★★★☆</h4>
                </div>
            </div>
        </section>
    </main>
    <footer id="main-footer">
        <p>&copy; movieTicketSystem</p>
    </footer>
</body>

</html>
