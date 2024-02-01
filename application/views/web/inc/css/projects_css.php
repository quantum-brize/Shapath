<style>
    /* Reset some basic elements */
    body,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    p,
    a,
    ul,
    li {
        margin: 0;
        padding: 0;
        text-decoration: none;
        list-style: none;
    }

    /* Set a basic font for the body */
    body {
        font-family: 'Roboto', sans-serif;
        line-height: 1.6;
        color: #333;
        background-color: #ffffff;
    }

    /* Style the main navbar */
    .navbar {
        background-color: #fff;
        box-shadow: 0 2px 5px rgba(0, 0, 0, .1);
    }

    .navbar-brand h1 {
        color: #007bff;
    }

    /* Style the spinner */
    #spinner {
        display: none;
        /* Hide by default and toggle with JavaScript */
    }

    /* Center content in the logo container */
    .logo-container {
        display: flex !important;
        justify-content: center !important;
        align-items: center !important;
    }

    .logo-container img {
        max-width: 200px;
        /* Set a maximum width for the logo */
        height: auto;
        /* Ensure the aspect ratio is maintained */
    }

    /* Style the quote video wrapper */
    .quote-video-wrapper {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin: 20px 0;
    }

    .quote {
        flex: 1;
        padding-right: 20px;
    }

    .quote h1,
    .quote p {
        margin-bottom: 10px;
    }

    .video {
        flex: 1;
    }




    /* Add some responsive breakpoints */
    @media (max-width: 992px) {
        .quote-video-wrapper {
            flex-direction: column;
        }
    }

    @media (max-width: 768px) {
        .navbar-collapse {
            background-color: #fff;
        }

        .back-to-top {
            width: 40px;
            height: 40px;
            bottom: 20px;
            right: 20px;
        }
    }
</style>