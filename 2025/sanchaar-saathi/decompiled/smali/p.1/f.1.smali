.class public Lp/f;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# instance fields
.field public final c:Lp/h;

.field public final d:Lp/d;

.field public final e:Lp/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lh/a;->o:I

    invoke-direct {p0, p1, p2, v0}, Lp/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lp/c0;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lp/b0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 4
    new-instance p1, Lp/h;

    invoke-direct {p1, p0}, Lp/h;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lp/f;->c:Lp/h;

    .line 5
    invoke-virtual {p1, p2, p3}, Lp/h;->e(Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lp/d;

    invoke-direct {p1, p0}, Lp/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lp/f;->d:Lp/d;

    .line 7
    invoke-virtual {p1, p2, p3}, Lp/d;->e(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lp/x;

    invoke-direct {p1, p0}, Lp/x;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lp/f;->e:Lp/x;

    .line 9
    invoke-virtual {p1, p2, p3}, Lp/x;->m(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lp/f;->d:Lp/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp/d;->b()V

    :cond_0
    iget-object v0, p0, Lp/f;->e:Lp/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lp/x;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lp/f;->c:Lp/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lp/h;->b(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lp/f;->d:Lp/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp/d;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lp/f;->d:Lp/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp/d;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lp/f;->c:Lp/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp/h;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lp/f;->c:Lp/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp/h;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lp/f;->d:Lp/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lp/d;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lp/f;->d:Lp/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lp/d;->g(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lj/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp/f;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lp/f;->c:Lp/h;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lp/h;->f()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lp/f;->d:Lp/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lp/d;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lp/f;->d:Lp/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lp/d;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lp/f;->c:Lp/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lp/h;->g(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lp/f;->c:Lp/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lp/h;->h(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
