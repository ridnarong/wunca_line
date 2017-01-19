# Shell script สำหรับเชื่อมต่อกับ marker ไปยัง Line
เป็นตัวอย่างสำหรับ สำหรับส่งข้ความไปยัง Line Application ประกอบด้วย 2 ตัวอย่างคือ
* nagios สำหรับใช้ร่วมกับ ระบบ monitor nagios โดย script จะถูก execute เมื่อมีเหตุการณ์เกิดขึ้นบน nagios พร้อมกับส่งค่าต่างๆ มาทาง parameter สามารถศึกษาเพิ่มได้จากระบบ template ของ nagios นอกจากจากตัวอย่างนี้ ยังแสดงตัวอย่างการนำผลลัพท์จากการ run คำสั่ง ping มาส่งเป็นข้อความเข้า Line application อีกด้วย
* cacti สำหรับใช้ร่วมกับ ระบบ monitor cacti โดยตัวอย่างนี้จะแสดงการ upload รูปภาพ ขึ้นบนบริการฝากรูป https://cloudinary.com แล้วนำผลลัพท์ซึ่งเป็น URL ของรูปภาพ ส่งเป็นข้อความ Line application ซึ่งสามารถประยุกต์ใช้ได้กับ cacti กล่าวคือสามารถนำรูปภาพกราฟจาก cacti บันทึกเก็บไว้ในเครื่องแล้วอัพโหลดขึ้นมาเก็บไว้ แล้วส่ง URL ของภาพไปพร้อมกับ Line message เพื่อแสดงผลได้

#ปัญหาที่น่าจะพบบ่อย
* ปัญหาการให้สิทธิการเข้าถึง Line ผ่าน IFTTT ลองเข้าผ่าน notify-bot.line.me แล้ว login โดยใช้ email หากไม่มี ให้ตั้งค่า ผูกบัญชี email กับ line ให้เรียบร้อย
* ข้อความไม่เข้า ให้ตรวจสอบ Recipient ว่าถูกต้องหรือไม่ และได้ทำการ invite line notify bot เข้าไปร่วมห้อง chat ด้วยหรือไม่

#Link
https://drive.google.com/drive/folders/0By0b7rDwf5S2MzZMb3NQY2pwNWM?usp=sharing
