GhostRule
===

:ghost: A series of Safer Mode bypass exploits against Ghostscript. :ghost:

[![DECO*27 - ゴーストルール feat. 初音ミク](http://img.youtube.com/vi/KushW6zvazM/0.jpg)](http://www.youtube.com/watch?v=KushW6zvazM)

## GhostRule(s)
All exploits allow an attacker to achieve OS command execution and file I/O however [commit 79a06b45e784e6839b2b2129cd2620ea606254e1](https://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=79a06b45e784e6839b2b2129cd2620ea606254e1) will kill them soon.

### "Rule #1": Safer Mode Bypass by `.forceput` Exposure via `.pdf_hook_DSC_Creator` (CVE-2019-14811)
[GhostRule \#1](./ghostrule1.ps) was assigned [CVE-2019-14811](https://access.redhat.com/security/cve/cve-2019-14811).

### "Rule #4": Safer Mode Bypass by `.forceput` Exposure via `.buildfont1` (CVE-2019-10216)
[GhostRule \#4](./ghostrule4.ps) was assigned [CVE-2019-10216](https://access.redhat.com/security/cve/cve-2019-10216). ~~The credit was stolen...~~ :crying_cat_face:
