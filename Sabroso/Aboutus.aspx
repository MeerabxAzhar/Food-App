<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="Sabroso.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About us</title>
    <style>        body {        
            background-color: #fff;
            padding: 50px 0; 
            width: 60%;
            margin: 0 auto; 
            border-radius: 10px;
            padding: 20px;
            text-align:justify;
        }
         .reserved{
     font-size: 14px;
      text-align: center;
      color: darkgray;
 }
     
        .about
        {
            background-color: purple;
            text-align: center;
            font-weight:bold;
            font-size: 35px;
            color: white;
            padding:10px;
            width: 100%; 
            position: absolute; 
            top: 0; 
            left: 0; 
}

        }
        .about-container {
            background-color: #f4f4f4;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
            transition: background-color 0.3s;
        }

        /* Animation for container on hover */
        .about-container:hover {
            background-color: #f4f4f4;
        }

        h2 {
            font-size: 24px;
            font-weight: bold;
            margin: 10px 0 2px;
            text-align: center;
        }

        h3, h4, h5 {
            font-weight: bold;
            margin: 10px 0 2px;
        }

        ul {
            margin-bottom: 1rem;
            margin-top: 0px;
        }

        li {
            font-weight: 400;
        }

        strong {
            font-weight: bolder;
        }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="about">About Us</div>
            <br />
            <br />
            <br />
            <br />
            <div class="about-container">
                <p>The story of Sabroso is a story of love and commitment to quality and health. We at Sabroso believe that you and your loved ones deserve hygienic and wholesome chicken at the most affordable price. We are committed to bringing top-notch protein-rich products that comply with internationally recognized health and well-being standards.</p>
            </div>
            <br />
            <img src="images\group.jpg" alt="Sabroso Image" style="max-width: 100%; height: auto; align-content: center;" />
            <br />
            <br />
            <div class="about-container">
                <h3>Our Mission</h3>
                <p>Our long-term strategy begins with our mission, which is persistence. It acts as a benchmark for our company to solidify our decisions with our actions.</p>
                <ul>
                    <li>To be part of every household.</li>
                    <li>To inspire a lifestyle full of joy and hope.</li>
                    <li>To be specialists in innovation.</li>
                </ul>
            </div>
            <div class="about-container">
                <h3>Our Vision</h3>
                <p>Our vision is to be a leading food company, providing the right protein at affordable prices to refuel the body and mind – while being socially responsible and filling a void in people’s lives and the community.</p>
            </div>
            <div class="about-container">
                <h3>Quality Assurance Lab</h3>
                <p>Highlighting our commitment to quality, Sabirs’ international-standard quality assurance lab is a major contributor to the production process. Equipped with the latest technology, our quality assurance lab monitors and regulates the entire integration process to ensure that all chicken and chicken products are full of nutrition and comply with international food safety standards. Additionally, all international HSE and Protective Equipment Protocol (PEP) have also been implemented in the plant.</p>
            </div>
        </div>
        <br />
        <br />

        <p class="reserved">
            &copy; 2024 Levitating Pakistan. All Right Reserved.
        </p>
        <p class="reserved">
            by MeeRuba
        </p>
    </form>
</body>
</html>

