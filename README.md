# GhostRule

This is a series of exploits that bypass SAFER mode of Ghostscript.

## Ghostscript <= 9.2x

The PoC codes shown below allow you to get command execution or file I/O at the privilege of the process even if Ghostscript is running on SAFER mode.  
However, all of them bypass the protection by overwriting the security flags in systemdict therefore they have no longer effect against recent Ghostscript(>= 9.50) that have started employing the new SAFER implementation that prevents critical dictionaries from overwriting (refer to [commit 79a06b](https://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=79a06b45e784e6839b2b2129cd2620ea606254e1)).

### "Rule #1": A `.forceput` exposure from `.pdf_hook_DSC_Creator` (CVE-2019-14811)

[CVE-2019-14811](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-14811) is a `.forceput` exposure from `.pdf_hook_DSC_Creator` and '[ghostrule1.ps](./ghostrule1.ps)' is the exploit for it.

[Credit](https://access.redhat.com/security/cve/cve-2019-14811): @hhc0null

### "Rule #2": A `.forceput` exposure from `setuserparams` (CVE-2019-14812)

[CVE-2019-14812](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-14812) is a `.forceput` exposure from `setuserparams` and '[ghostrule2.ps](./ghostrule2.ps)' is the exploit for it.

[Credit](https://access.redhat.com/security/cve/cve-2019-14812): @hhc0null

### "Rule #3": A `.forceput` exposure from `setsystemparams` (CVE-2019-14813)

[CVE-2019-14813](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-14813) is a `.forceput` exposure from `setsystemparams` and '[ghostrule3.ps](./ghostrule3.ps)' is the exploit for it.

[Credit](https://access.redhat.com/security/cve/cve-2019-14813): @hhc0null

### "Rule #4": A `.forceput` exposure from `.buildfont1` (CVE-2019-10216)

[CVE-2019-10216](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-10216) is a `.forceput` exposure from `buildfont1` and '[ghostrule4.ps](./ghostrule4.ps)' is the exploit for it.

[Credit](https://access.redhat.com/security/cve/cve-2019-10216): Artifex Software and Netanel (Cloudinary) as the "original" reporter...???

### "Rule #5": '???'

I'm not so ethical thus I'm keeping the technique to grow its 'lifetime' <3

---

The name is from:

[![DECO*27 - ゴーストルール feat. 初音ミク](http://img.youtube.com/vi/KushW6zvazM/0.jpg)](http://www.youtube.com/watch?v=KushW6zvazM)
