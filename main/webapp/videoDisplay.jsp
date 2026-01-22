<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>VeeGo | Browse by Category</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
        }

        .video-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            width: 100%;
            max-width: 1000px;
        }

        .video-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            overflow: hidden;
            padding: 1rem;
            text-align: center;
        }

        .video-card video {
            width: 100%;
            border-radius: 8px;
        }

        .video-title {
            margin-top: 0.5rem;
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>

	<!--displaying videos on home page-->
    <!-- Video Display Grid -->
    <div class="video-grid">
        <!-- Static Sample Videos -->
        
        
       <div class="video-card">
    <video src="uploaded_videos/cars2.mp4"  controls autoplay loop muted></video>
    <div class="video-title">Lamborghini</div>
    
 <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='serach.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='serach.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>


</div>

        
        <div class="video-card">
            <video src="uploaded_videos/hiking1.mp4" controls autoplay loop muted></video>
            <div class="video-title">Solo Hiking</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
        
        <div class="video-card">
            <video src="uploaded_videos/riding1.mp4" controls autoplay loop muted></video>
            <div class="video-title">Mountain Bicycle Riding</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
        
        
        <div class="video-card">
            <video src="uploaded_videos/surfing1.mp4" controls autoplay loop muted></video>
            <div class="video-title">Water Surfing</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
    
        <div class="video-card">
            <video src="uploaded_videos/travel2.mp4" controls autoplay loop muted></video>
            <div class="video-title">Solo Bike Riding</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
        <div class="video-card">
            <video src="uploaded_videos/cars1.mp4" controls autoplay loop muted></video>
            <div class="video-title">Rolls-Royce</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
        <div class="video-card">
            <video src="uploaded_videos/experiment1.mp4" controls autoplay loop muted></video>
            <div class="video-title">Science Experiments</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
        <div class="video-card">
            <video src="uploaded_videos/success1.mp4" controls autoplay loop muted></video>
            <div class="video-title">Steve Harvey Motivational Speech</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
        
        <div class="video-card">
            <video src="uploaded_videos/cars3.mp4" controls autoplay loop muted></video>
            <div class="video-title">Motor Car</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
        <div class="video-card">
            <video src="uploaded_videos/education1.mp4" controls autoplay loop muted></video>
            <div class="video-title">Let's learn parts of body</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>

        <div class="video-card">
            <video src="uploaded_videos/education2.mp4" controls autoplay loop muted></video>
            <div class="video-title">Coding</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>

        <div class="video-card">
            <video src="uploaded_videos/entertainment1.mp4" controls autoplay loop muted></video>
            <div class="video-title">Bom Diggy Diggy</div>
             <div style="margin-top: 0.75rem; display: flex; justify-content: center; gap: 0.75rem; flex-wrap: wrap;">
    
    <!-- Like Button -->
    <button onclick="location.href='like.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #ff6b6b; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(255, 107, 107, 0.3); transition: background 0.3s ease;">
        👍
    </button>

    <!-- Comment Button -->
    <button onclick="location.href='comment.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #4d96ff; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(77, 150, 255, 0.3); transition: background 0.3s ease;">
        💬
    </button>

    <!-- Share Button -->
    <button onclick="location.href='share.jsp?video=uploaded_videos/cars1.mp4'" 
            style="padding: 0.6rem 1.2rem; font-size: 1rem; background-color: #00c9a7; color: white; border: none; border-radius: 10px; cursor: pointer; box-shadow: 0 4px 10px rgba(0, 201, 167, 0.3); transition: background 0.3s ease;">
        🔗
    </button>

</div>
        </div>
        
        
        
        
     
    </div>


</body>
</html>

