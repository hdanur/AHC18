 <%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Achdefault.aspx.cs" Inherits="AHC.Achdefault" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <!--Image with the freeqoute redirection-->
        <section>
            <br />
            <br />
            <br />

            <div class="box" style="padding-left: 5%">
                <table style="width: 90%; background-color: gainsboro; background-image: url('http://localhost:8310/Image/Ahcbackgroundfamily.PNG'); height: 400px" class="auto-style2">
                    <tr>
                        <td style="color: #339933; font-size: 40px; font-weight: bold; padding-left: 5%; width: 720px;">AHC. Inc.</td>
                    </tr>
                    <tr>
                        <td style="font-size: x-large; padding-left: 5%; width: 720px; vertical-align: top">Compare Prices and save money!!!!
           <br />
                            Get Free Insurance Quotes now!<br />

                            <a href="freeQoute.aspx" class="auto-style2" style="background-color: #339933; color: #FFFFFF; font-weight: bold; font-size: medium">Free Quotes &raquo;</a>
                            <br />
                            <a style="color: black; font-size: x-large">Contact Us 24/7 at (800) 804-9998
        <br />
                                or Find an Agent by calling the number.</a>
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </div>
        </section>
        <!-- End of Image with the freeqoute redirection-->

        <!--You tube video Section-->
        <section>
            <div class="box">
                <p>
                    <strong style="color:darkgreen; text-align:center; margin-left:400px; font-style:italic; font-size:larger">Before You Begin,
                     Please Take a Moment to Watch This Video
                    </strong>
                    <br />
                    <br />
                    <span class="embed-youtube" style="text-align: center; display: block;">
                        <iframe class='youtube-player' typeof='text/html' width='640' height='300'
                            src='https://www.youtube.com/embed/-58VD3z7ZiQ?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent' allowfullscreen='true' style='border: 0;'></iframe>
                    </span>
                </p>
            </div>
        </section>
        <br />

        <!-- End of Youtube video Section-->

        <!--Plans available-->
        <div>
            <div style="padding-left: 5%; width: 90%">
                <table>
                    <tr>
                        <td>
                            <h2 style="color: #339933">Individual Plans</h2>
                            <p style="font-size: 12px">
                                You need to find affordable health insurance for yourself that fits your individual needs and budget. AHC offers a broad portfolio of health plans from recognized national and regional insurance companies. From platinum level metal plans to catastrophic only, we&#39;re ready to help you find a plan to fit your lifestile.
                            </p>
                            <p>
                                <a class="auto-style2" href="Individualand.aspx" style="color: #339933; background-color: gainsboro">Learn more &raquo;</a>
                            </p>
                        </td>

                        <td>
                            <h2 style="color: #339933">Family Plans</h2>
                            <p style="font-size: 12px">
                                If you are responsible for purchasing affordable health insurance for your family, you know how hard it can be to find covwerage that fits both your needs and your budget. AHC offers metal plans rated bronze level through platinum, from recognized national and regional insurance companies to meet the changing needs of your family.
                            </p>
                            <p>
                                <a class="auto-style2" href="Individualand.aspx" style="background-color: gainsboro; color: #339933">Learn more &raquo;</a>
                            </p>
                        </td>
                        <td>
                            <h2 style="color: #339933">Short-Term Plans</h2>
                            <p style="font-size: 12px">
                                With short-term policies, healthy applicants can secure immediate individual and family coverage, with plans that can kick in as early as the net day.
                            </p>
                            <p>
                                <a class="auto-style2" href="Individualand.aspx" style="background-color: gainsboro; color: #339933">Learn more &raquo;</a>
                            </p>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

    </form>
       
    </asp:Content>

