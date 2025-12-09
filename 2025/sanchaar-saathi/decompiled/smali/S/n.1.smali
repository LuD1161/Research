.class public abstract LS/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS/n$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/MenuItem;LS/b;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p0, LL/b;

    if-eqz v0, :cond_0

    check-cast p0, LL/b;

    invoke-interface {p0, p1}, LL/b;->b(LS/b;)LL/b;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b(Landroid/view/MenuItem;CI)V
    .locals 1

    instance-of v0, p0, LL/b;

    if-eqz v0, :cond_0

    check-cast p0, LL/b;

    invoke-interface {p0, p1, p2}, LL/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, LS/n$a;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static c(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1

    instance-of v0, p0, LL/b;

    if-eqz v0, :cond_0

    check-cast p0, LL/b;

    invoke-interface {p0, p1}, LL/b;->setContentDescription(Ljava/lang/CharSequence;)LL/b;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LS/n$a;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static d(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 1

    instance-of v0, p0, LL/b;

    if-eqz v0, :cond_0

    check-cast p0, LL/b;

    invoke-interface {p0, p1}, LL/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LS/n$a;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static e(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    instance-of v0, p0, LL/b;

    if-eqz v0, :cond_0

    check-cast p0, LL/b;

    invoke-interface {p0, p1}, LL/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LS/n$a;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static f(Landroid/view/MenuItem;CI)V
    .locals 1

    instance-of v0, p0, LL/b;

    if-eqz v0, :cond_0

    check-cast p0, LL/b;

    invoke-interface {p0, p1, p2}, LL/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, LS/n$a;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static g(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1

    instance-of v0, p0, LL/b;

    if-eqz v0, :cond_0

    check-cast p0, LL/b;

    invoke-interface {p0, p1}, LL/b;->setTooltipText(Ljava/lang/CharSequence;)LL/b;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LS/n$a;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method
