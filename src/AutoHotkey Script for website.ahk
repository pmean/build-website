#SingleInstance Force

^1::
Send, {Home}{Backspace}{Space}{Up 2}{Down 2}{Home}
Return

^2::
Send, {Up 4}{Down 2}{Home}
Return

^3::
Send, You can find an [earlier version][sim1] of this page on my [blog][sim2].{Return 2}[sim1]: http://blog.pmean.com//{Return}[sim2]: http://blog.pmean.com{Home}{Up}{End}{Left}
Return

^4::
Send, {Home}page_update: {Return}{Up}{Right 13}partial{Left 7}{Shift down}{End}{Shift Up}
Return

^5::
Send, You can find an [earlier version][sim1] of this page on my [old website][sim2].{Return 2}[sim1]: http://www.pmean.com/06/.html{Return}[sim2]: http://www.pmean.com{Home}{Up}{Right 32}
Return

^6::
Send, <p>This page has moved to <a href="http://new.pmean.com//">a new website</a>.</p>{Left 25}
Return

^7::
Send, {Home}This page is obsolete. I am keeping it around for nostalgic reasons.{Return 2}
Return

^8::
Send, {Home}page_update: {Return}{Up}{Right 13}partial{Left 7}
Return

^9::
Send, {End}{Return 2}<div class="notes">{Return 4}</div>{Up 2}
Return

^0::
Send, {Home}This page is moving to a <a href="http://new.pmean.com//">new website</a>.{Return 2}{Up}{Left 20}
Return

