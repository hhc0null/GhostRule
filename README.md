# GhostRule

This is a series of exploits that bypass SAFER mode of Ghostscript.

## Ghostscript <= 9.2x

The PoC codes shown below allow you to get command execution or file I/O at the privilege of the process even if Ghostscript is running on SAFER mode.  
However, all of them bypass the protection by overwriting the security flags in systemdict therefore they have no longer effect against recent Ghostscript(>= 9.50) that have started employing the new SAFER implementation that prevents critical dictionaries from overwriting (refer to [commit 79a06b](https://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=79a06b45e784e6839b2b2129cd2620ea606254e1)).

### "Rule #1": Safer Mode Bypass by `.forceput` Exposure from `.pdf_hook_DSC_Creator` (CVE-2019-14811)

[GhostRule \#1](./ghostrule1.ps) was assigned [CVE-2019-14811](https://access.redhat.com/security/cve/cve-2019-14811).

### "Rule #2": Safer Mode Bypass by `.forceput` Exposure from `setuserparams` (CVE-2019-14812)

[GhostRule \#2](./ghostrule2.ps) was assigned [CVE-2019-14812](https://access.redhat.com/security/cve/cve-2019-14812).

### "Rule #3": Safer Mode Bypass by `.forceput` Exposure from `setsystemparams` (CVE-2019-14813)

[GhostRule \#3](./ghostrule3.ps) was assigned [CVE-2019-14813](https://access.redhat.com/security/cve/cve-2019-14813).

### "Rule #4": Safer Mode Bypass by `.forceput` Exposure from `.buildfont1` (CVE-2019-10216)

[GhostRule \#4](./ghostrule4.ps) was assigned [CVE-2019-10216](https://access.redhat.com/security/cve/cve-2019-10216). ~~The credit was stolen...~~ :crying_cat_face:

### "Rule #5": Safer Mode Bypass by `.forceput` Exposure from \*\*\*

A little more complex(?) case coming soon...?

---

The name is from:

[![DECO*27 - ゴーストルール feat. 初音ミク](http://img.youtube.com/vi/KushW6zvazM/0.jpg)](http://www.youtube.com/watch?v=KushW6zvazM)
