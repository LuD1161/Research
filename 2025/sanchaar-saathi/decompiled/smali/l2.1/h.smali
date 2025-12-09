.class public abstract Ll2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ll2/d;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, Ll2/h;->b()Ll2/d;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ll2/e;

    invoke-direct {p0}, Ll2/e;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Ll2/j;

    invoke-direct {p0}, Ll2/j;-><init>()V

    return-object p0
.end method

.method public static b()Ll2/d;
    .locals 1

    new-instance v0, Ll2/j;

    invoke-direct {v0}, Ll2/j;-><init>()V

    return-object v0
.end method

.method public static c()Ll2/f;
    .locals 1

    new-instance v0, Ll2/f;

    invoke-direct {v0}, Ll2/f;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Ll2/g;

    if-eqz v0, :cond_0

    check-cast p0, Ll2/g;

    invoke-virtual {p0, p1}, Ll2/g;->T(F)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Ll2/g;

    if-eqz v1, :cond_0

    check-cast v0, Ll2/g;

    invoke-static {p0, v0}, Ll2/h;->f(Landroid/view/View;Ll2/g;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;Ll2/g;)V
    .locals 1

    invoke-virtual {p1}, Ll2/g;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lg2/j;->c(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Ll2/g;->X(F)V

    :cond_0
    return-void
.end method
