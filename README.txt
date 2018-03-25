This is a solution to problem statement by wizmantra at Hackfest'18 IIT (ISM) Dhanbad

The challenge primarily has two parts.
1) The first part involves image processing. There are exam papers. Each paper has 30
MCQ questions. Each question has one correct answer and 3 wrong answers.
Corresponding to every answer there is an associated “error code”. The option –
error code mapping will be supplied to you. Now a child taking the exam marks the
answers. Thus we get to record 30 responses. We scan the paper and figure out how
many errors corresponding to which error code has happened for a particular child.
So the input to this process is the Exam response paper (in physical format). This
paper has to be scanned to form a jpeg\pdf. From that a dashboard and excel sheet
should be created for every examinee. The output excel sheet should have error
codes and the number of times it has occurred.
2) The second part of the challenge is figuring out patterns in errors. Right now the set
of error codes we have are as per the experience we have. We plan to update this
set of error codes as time progresses. In the long run we want to figure out a set of
“core error codes” which are at the root of all errors. For this part of the challenge
the input is the excel sheet \ dashboard created in step1. So now you have
responses of 200 kids (effectively 6000 responses). Now create an algorithm which
will figure out a few error codes (which is a subset of the original set of error codes
supplied), which is the root cause of the remaining i.e operating with these core
codes will enable us operate with 95% efficiency (as compared to operating with all
the error codes)

To proceed with the First part of the problem, it is divided into three parts;

1)Pre Processing :
1. Aligning Images & Cropping to relevant parts only
  a. Using align layers feature in Photoshop, we can align thee layers of two or more images and
  we can also perform this over a batch of images using recorded actions on sample images
2. Resizing
  a. Resizing the image to 485 px X 300px (or any similar lower resolution to reduced the
  computation time)
3. Enhancing the image
  a. Images can be enhanced using Adobe photoshop lightroom which improves clarity on images
  collectively at one time syncing with the metadata of all the images and converting it to black
  and white image

2) Reading the image data
  1. Reading the image data of Image 1 (processed ) in octave using imread.m function which reads
  the intensity values of each pixel of the image in a matrix of 485 x 300 (Suppose I)
  2. Similarly reading the image data for Image 2 (processed) in a corresponding matrix (Suppose J)

3) Processing the image
  1. Based on the intensity values we have, we calculate the difference of the two matrices giving the
  approximated areas where there might be tick mark.
  2. By measuring the approximate pixel values where each box(area provided for marking a tick for
  corresponding option of a question) starts and ends, we can calculate the sum of the intensity at
  every pixel in the box.
  3. For every question the tick mark will be present in a box with maximum sum of intensities.

  The resultant image formed by subtracting the intensity values of scanned image and sample basic
  Image(see image res.jpg in image folder). As we can see that only tick marks are left and there are some lines which are being shown because
  of not perfect alignment of the two images, which is also not possible practically because the images
  scanned are scanned by mobile [hone camera which incur the lens deviation factors

Software Used :
1) Octave 4.2.2-w64
for execution of the program- to convert images to intensity matrices, to subtract the matrices, to execute the im_process.m algorithm
2) Adobe Photoshop CS6
to align the images for better accuracy, by using actions tool which records actions you perform
and then apply those changes on batch of images
3) Adobe lightroom classic CC
Adobe lightroom cc was used to export the images by reducing them to a very low resolution although which doesn't effect the accuracy
infact it reduces the computational time



To reach us, please refer to CONTACT_405Found.txt  
