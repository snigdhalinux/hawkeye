
# Snigdha OS AUR Repository :: hawkeye

This is the official aur repository for **Snigdha OS**. You can follow the steps to use this repository in any **arch** based linux distro to download packages using **pacman** and also uninstall using **pacman**. I will share a **pkglist** for this repository later on. If you are using **Snigdha OS**, you need not to do that!




## Adding Snighda OS GPG Key

**Step 1:**

```bash
sudo pacman-key --recv-key 16D18BF92792DCCF --keyserver keyserver.ubuntu.com
```

![01](https://github.com/snigdhalinux/snigdhaos-archiso/assets/148610067/4fea2778-17a1-4ddb-bd7e-80f7a05ca873)

*Figure 1: After Executing "sudo pacman-key --recv-key 16D18BF92792DCCF --keyserver keyserver.ubuntu.com"*

**Step 2:** I will always recommend you to verify the key first.(Optional)
```bash
sudo pacman-key --finger 16D18BF92792DCCF
```

![02](https://github.com/snigdhalinux/snigdhaos-archiso/assets/148610067/acb0edfc-91b1-4fcb-801e-9e8ca247f10f)
*Figure 2: After executing "sudo pacman-key --finger 16D18BF92792DCCF"*

**Step 3:**  Now You are required to locally sign the gpg key.
```bash
sudo pacman-key --lsign-key 16D18BF92792DCCF
```

![03](https://github.com/snigdhalinux/snigdhaos-archiso/assets/148610067/84e49639-d2fd-49dd-8539-8d936de01100)

*Figure 3: After executing "sudo pacman-key --lsign-key 16D18BF92792DCCF"*

**Step 4:** Use **nano** or **vim** to edit your existing **pacman.conf** file.
```bash
sudo nano /etc/pacman.conf
```

![04](https://github.com/snigdhalinux/snigdhaos-archiso/assets/148610067/38df5488-38a2-4719-aaef-5275e2bcfc87)

*Figure 4: After Executing "sudo nano /etc/pacman.conf"*

**Step 5:** Append the following 
```
[hawkeye]
SigLevel = Required DatabaseOptional
Server = https://snigdhalinux.github.io/$repo/$arch
```
![05](https://github.com/snigdhalinux/snigdhaos-archiso/assets/148610067/0cf663ec-1120-44cf-8362-2ea6aadaa4b3)

*Figure 5: Appending **hawkeye** repository.*

Now press **ctrl+x** then **y** to save and exit nano.

**Note: In case you don't have nano or vim please install by executing the following command in your terminal.**

```bash
sudo pacman -S nano
```

**Step 6:** Synchronize Your Database.

```bash
sudo pacman -Sy
```

![06](https://github.com/snigdhalinux/snigdhaos-archiso/assets/148610067/9ef567e3-b102-479f-875d-dbe6841a5921)

*Figure 6: After executing "sudo pacman -Sy"*

**Happy Journey**
