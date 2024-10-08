# tempcg
tempcg is a simple script to monitor and display the CPU and GPU temperatures directly in the terminal. With the command tempcg, you can easily check your system's temperature in real-time, making it ideal for users who want quick access to critical hardware information without opening additional monitoring software.


### توضیحات برای گیت هاب (فارسی)

این پروژه شامل یک اسکریپت است که دمای CPU و GPU سیستم شما را در ترمینال نمایش می‌دهد. شما می‌توانید با وارد کردن دستور `tempcg` در ترمینال، اطلاعات دما را به‌صورت خودکار مشاهده کنید.

#### مراحل اجرای پروژه:

1. **ایجاد اسکریپت**:
   - ابتدا یک فایل به نام `tempcg.sh` ایجاد کرده و کد زیر را در آن وارد کنید:
     ```bash
     watch -n 1 "echo '------ CPU Temperature: ------' && sensors | grep 'Core' && echo '\n------ GPU Information: ------' && nvidia-smi --query-gpu=pci.bus_id,name,temperature.gpu,utilization.gpu --format=csv,noheader && echo '\n___ Script by Mohammad Hossein Soleymani ___'"
     ```
   - سپس فایل را ذخیره کرده و به آن مجوز اجرایی بدهید:
     ```bash
     chmod +x ~/tempcg.sh
     ```

2. **اضافه کردن دستور tempcg به bashrc**:
   - برای این‌که دستور `tempcg` اجرا شود، باید این نام دستور را در فایل `~/.bashrc` ثبت کنید. انتهای فایل `~/.bashrc` خط زیر را اضافه کنید:
     ```bash
     alias tempcg="~/tempcg.sh"
     ```
   - سپس تغییرات را با استفاده از دستور زیر بارگذاری کنید:
     ```bash
     source ~/.bashrc
     ```

3. **تست دستور**:
   - حالا می‌توانید با وارد کردن دستور `tempcg` در ترمینال، دمای CPU و GPU را مشاهده کنید.

#### توضیحات اضافی:
- فایل `~/.bashrc` به تنظیمات ترمینال شما تعلق دارد و با هر بار باز کردن ترمینال بارگذاری می‌شود.
- این اسکریپت هر ثانیه یک بار اطلاعات دما را به‌روز می‌کند.

---

### GitHub Description (English)

This project includes a script that displays your system's CPU and GPU temperatures in the terminal. By entering the `tempcg` command, you can automatically view temperature data.

#### Steps to Run the Project:

1. **Create the Script**:
   - First, create a file named `tempcg.sh` and add the following code:
     ```bash
     watch -n 1 "echo '------ CPU Temperature: ------' && sensors | grep 'Core' && echo '\n------ GPU Information: ------' && nvidia-smi --query-gpu=pci.bus_id,name,temperature.gpu,utilization.gpu --format=csv,noheader && echo '\n___ Script by Mohammad Hossein Soleymani ___'"
     ```
   - Then, save the file and make it executable:
     ```bash
     chmod +x ~/tempcg.sh
     ```

2. **Add tempcg Command to bashrc**:
   - To make the `tempcg` command available in your terminal, add the following line at the end of your `~/.bashrc` file:
     ```bash
     alias tempcg="~/tempcg.sh"
     ```
   - Then, load the changes using the command:
     ```bash
     source ~/.bashrc
     ```

3. **Test the Command**:
   - Now, by entering the `tempcg` command in the terminal, you will be able to see the CPU and GPU temperatures.

#### Additional Information:
- The `~/.bashrc` file is part of your terminal settings and is loaded each time you open the terminal.
- The script refreshes the temperature data every second.

--- 
