<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complainant.aspx.cs" Inherits="DocuFinder.Complainant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DocuFinder: Dashboard</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    /* CSS code goes here */
    body {
        font-family: Arial, sans-serif;
        background-color: lightblue;
        display: flex;
    }
    .sidebar {
        width: 200px;
        background-color: darkblue;
        padding: 20px;
        color: white;
    }
    .content {
        flex-grow: 1;
        padding: 20px;
        margin-left: 220px; /* Adjust the margin to create space for the sidebar */
    }
    .sidebar ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }
    .sidebar li {
        margin-bottom: 10px;
    }
    .sidebar li a {
        text-decoration: none;
        color: #FFF;
        font-weight: bold;
    }
    .sidebar li a:hover {
        color: #007bff;
    }
    .active {
        color: #007bff;
    }
    .header {
        text-align: center;
        margin-bottom: 20px;
    }
    .header h1 {
        margin: 0;
    }
    .header p {
        margin: 0;
    }
    .form-container {
        max-width: 500px;
        margin: 0 auto;
        background-color: #FFF;
        padding: 20px;
    }
    .form-group {
        margin-bottom: 20px;
    }
    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .form-group input,
    .form-group textarea,
    .form-group select {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    .form-group select {
        appearance: none;
        -webkit-appearance: none;
        -moz-appearance: none;
        background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'%3E%3Cpath d='M1.5 4.5L6 9l4.5-4.5z'/%3E%3C/svg%3E");
        background-repeat: no-repeat;
        background-position: right 8px center;
        background-size: 12px 12px;
        padding-right: 30px;
    }
    .qr-code {
        text-align: center;
        margin: 20px 0;
    }
    .search-filter {
        margin-bottom: 20px;
    }
    .search-filter label {
        font-weight: bold;
        margin-right: 10px;
    }
    .status {
        font-weight: bold;
        background-color: #f9f9f9;
        padding: 10px;
        border-radius: 4px;
        margin-bottom: 10px;
    }
    .status p {
        margin: 0;
    }
    .status span {
        font-weight: normal;
    }
    .download {
        display: block;
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
    <div class="w3-sidebar w3-light-grey w3-bar-block sidebar">
        <div class="header">
            <h1>DocuFinder</h1>
            <p>Barangay System</p>
        </div>
        <ul class="w3-ul w3-hoverable">
            <li><a href="#" class="active" onclick="changePage('dashboard')">Dashboard</a></li>
            <li><a href="#" onclick="changePage('eblotter')">E-Blotter</a></li>
            <li><a href="#" onclick="changePage('status')">Status</a></li>
        </ul>
    </div>
    <div class="content">
        <!-- Dashboard content goes here -->
        <h2>Welcome to the Dashboard!</h2>
        <p>This is the dashboard page where you can view important information and statistics.</p>
        <div class="static-element">
            <h3>Important Announcement</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac dui vel velit fermentum pellentesque. Donec euismod mauris id tellus aliquet, et fringilla metus ultricies. Fusce sed pharetra ex. Phasellus vel metus nibh. Etiam fringilla, arcu nec rutrum tristique, mauris lorem gravida dui, eu venenatis tortor elit vel lectus. Vivamus id eros risus. Sed vitae dolor sed tellus tristique rutrum. Sed lobortis mi vel neque feugiat, eget convallis lectus interdum.</p>
        </div>
    </div>

    <script>
        function changePage(page) {
            // Remove active class from all links
            const links = document.querySelectorAll('.w3-sidebar a');
            links.forEach(link => {
                link.classList.remove('active');
            });

            // Add active class to the clicked link
            const activeLink = document.querySelector(`.w3-sidebar a[href='#'][onclick="changePage('${page}')"]`);
            activeLink.classList.add('active');

            // Show the corresponding content based on the clicked link
            const content = document.querySelector('.content');
            switch (page) {
                case 'dashboard':
                    content.innerHTML = `
                        <h2>Welcome to the Dashboard!</h2>
                        <p>This is the dashboard page where you can view important information and statistics.</p>
                        <div class="static-element">
                            <h3>Important Announcement</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac dui vel velit fermentum pellentesque. Donec euismod mauris id tellus aliquet, et fringilla metus ultricies. Fusce sed pharetra ex. Phasellus vel metus nibh. Etiam fringilla, arcu nec rutrum tristique, mauris lorem gravida dui, eu venenatis tortor elit vel lectus. Vivamus id eros risus. Sed vitae dolor sed tellus tristique rutrum. Sed lobortis mi vel neque feugiat, eget convallis lectus interdum.</p>
                        </div>
                        <div class="statistics">
                            <h3>Statistics</h3>
                            <ul>
                                                                <li><span class="stat-label">Total Documents:</span> <span class="stat-value">500</span></li>
                                <li><span class="stat-label">Pending Documents:</span> <span class="stat-value">100</span></li>
                                <li><span class="stat-label">Completed Documents:</span> <span class="stat-value">400</span></li>
                            </ul>
                        </div>
                        <div class="recent-documents">
                            <h3>Recent Documents</h3>
                            <ul>
                                <li>
                                    <span class="doc-number">Document Number: 12345</span>
                                    <span class="doc-category">Category: Category 1</span>
                                    <span class="doc-status">Status: Processing</span>
                                </li>
                                <li>
                                    <span class="doc-number">Document Number: 67890</span>
                                    <span class="doc-category">Category: Category 2</span>
                                    <span class="doc-status">Status: Awaiting Response</span>
                                </li>
                                <li>
                                    <span class="doc-number">Document Number: 54321</span>
                                    <span class="doc-category">Category: Category 3</span>
                                    <span class="doc-status">Status: Completed</span>
                                </li>
                            </ul>
                        </div>
                    `;
                    break;
                case 'eblotter':
                    content.innerHTML = `
                    <div class="form-container">
                        <h2>Complaint Submission Form</h2>
                        <form>
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" id="name" name="name" required>
                            </div>
                            <div class="form-group">
                                <label for="complaint">Complaint:</label>
                                <textarea id="complaint" name="complaint" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="category">Category:</label>
                                <select id="category" name="category" required>
                                    <option value="">Select a category</option>
                                    <option value="Category 1">Category 1</option>
                                    <option value="Category 2">Category 2</option>
                                    <option value="Category 3">Category 3</option>
                                </select>
                            </div>
                            <button type="submit">Submit</button>
                        </form>
                    </div>

                    <div class="qr-code">
                        <img src="path/to/qr-code-sample-png-3.png" alt="QR Code">
                    </div>

                    <div class="search-filter">
                        <label for="document-number">Document Number:</label>
                        <input type="text" id="document-number">

                        <label for="category-filter">Category:</label>
                        <select id="category-filter">
                            <option value="">All</option>
                            <option value="Category 1">Category 1</option>
                            <option value="Category 2">Category 2</option>
                            <option value="Category 3">Category 3</option>
                        </select>

                        <label for="submit-date">Submit Date:</label>
                        <input type="date" id="submit-date">
                    </div>

                    <h2>Document Status</h2>
                    <div class="status">
                        <p>Document Number: <span>12345</span></p>
                        <p>Category: <span>Category 1</span></p>
                        <p>Status: <span>Processing</span></p>
                        <p class="download"><a href="#">Download</a></p>
                    </div>

                    <div class="status">
                        <p>Document Number: <span>67890</span></p>
                        <p>Category: <span>Category 2</span></p>
                        <p>Status: <span>Awaiting Response</span></p>
                        <p class="download"><a href="#">Download</a></p>
                    </div>
                    `;
                    break;
                case 'status':
                    content.innerHTML = `
                        <h2>Welcome to the Status Page!</h2>
                        <p>This is the status page where you can view the status of your documents and download them.</p>
                        <div class="static-element">
                            <h3>Important Notice</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac dui vel velit fermentum pellentesque. Donec euismod mauris id tellus aliquet, et fringilla metus ultricies. Fusce sed pharetra ex. Phasellus vel metus nibh. Etiam fringilla, arcu nec rutrum tristique, mauris lorem gravida dui, eu venenatis tortor elit vel lectus. Vivamus id eros risus. Sed vitae dolor sed tellus tristique rutrum. Sed lobortis mi vel neque feugiat, eget convallis lectus interd                        um.</p>
                        </div>
                        <div class="status-info">
                            <h3>Document Status</h3>
                            <ul>
                                <li>
                                    <span class="doc-number">Document Number: 12345</span>
                                    <span class="doc-category">Category: Category 1</span>
                                    <span class="doc-status">Status: Processing</span>
                                    <span class="doc-download"><a href="#">Download</a></span>
                                </li>
                                <li>
                                    <span class="doc-number">Document Number: 67890</span>
                                    <span class="doc-category">Category: Category 2</span>
                                    <span class="doc-status">Status: Awaiting Response</span>
                                    <span class="doc-download"><a href="#">Download</a></span>
                                </li>
                                <li>
                                    <span class="doc-number">Document Number: 54321</span>
                                    <span class="doc-category">Category: Category 3</span>
                                    <span class="doc-status">Status: Completed</span>
                                    <span class="doc-download"><a href="#">Download</a></span>
                                </li>
                            </ul>
                        </div>
                    `;
                    break;
                default:
                    break;
            }
        }
    </script>
</body>
</html>