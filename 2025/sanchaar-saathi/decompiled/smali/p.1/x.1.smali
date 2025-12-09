.class public Lp/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lp/d0;

.field public c:Lp/d0;

.field public d:Lp/d0;

.field public e:Lp/d0;

.field public f:Lp/d0;

.field public g:Lp/d0;

.field public h:Lp/d0;

.field public final i:Lp/z;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lp/x;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lp/x;->k:I

    iput-object p1, p0, Lp/x;->a:Landroid/widget/TextView;

    new-instance v0, Lp/z;

    invoke-direct {v0, p1}, Lp/z;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lp/x;->i:Lp/z;

    return-void
.end method

.method public static d(Landroid/content/Context;Lp/i;I)Lp/d0;
    .locals 0

    invoke-virtual {p1, p0, p2}, Lp/i;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lp/d0;

    invoke-direct {p1}, Lp/d0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lp/d0;->d:Z

    iput-object p0, p1, Lp/d0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A(IF)V
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0, p1, p2}, Lp/z;->u(IF)V

    return-void
.end method

.method public final B(Landroid/content/Context;Lp/f0;)V
    .locals 8

    sget v0, Lh/j;->a3:I

    iget v1, p0, Lp/x;->j:I

    invoke-virtual {p2, v0, v1}, Lp/f0;->k(II)I

    move-result v0

    iput v0, p0, Lp/x;->j:I

    sget v0, Lh/j;->d3:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lp/f0;->k(II)I

    move-result v0

    iput v0, p0, Lp/x;->k:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lp/x;->j:I

    and-int/2addr v0, v2

    iput v0, p0, Lp/x;->j:I

    :cond_0
    sget v0, Lh/j;->c3:I

    invoke-virtual {p2, v0}, Lp/f0;->s(I)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_6

    sget v0, Lh/j;->e3:I

    invoke-virtual {p2, v0}, Lp/f0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget p1, Lh/j;->Z2:I

    invoke-virtual {p2, p1}, Lp/f0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v4, p0, Lp/x;->m:Z

    sget p1, Lh/j;->Z2:I

    invoke-virtual {p2, p1, v3}, Lp/f0;->k(II)I

    move-result p1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lp/x;->l:Landroid/graphics/Typeface;

    sget v0, Lh/j;->e3:I

    invoke-virtual {p2, v0}, Lp/f0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lh/j;->e3:I

    goto :goto_2

    :cond_7
    sget v0, Lh/j;->c3:I

    :goto_2
    iget v5, p0, Lp/x;->k:I

    iget v6, p0, Lp/x;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-direct {p1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lp/x$a;

    invoke-direct {v7, p0, v5, v6, p1}, Lp/x$a;-><init>(Lp/x;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Lp/x;->j:I

    invoke-virtual {p2, v0, p1, v7}, Lp/f0;->j(IILI/b$b;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    iget v5, p0, Lp/x;->k:I

    if-eq v5, v1, :cond_9

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v5, p0, Lp/x;->k:I

    iget v6, p0, Lp/x;->j:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    move v6, v3

    goto :goto_3

    :cond_8
    move v6, v4

    :goto_3
    invoke-static {p1, v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    goto :goto_4

    :cond_9
    iput-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    :cond_a
    :goto_4
    iget-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v3

    goto :goto_5

    :cond_b
    move p1, v4

    :goto_5
    iput-boolean p1, p0, Lp/x;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    iget-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {p2, v0}, Lp/f0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    iget p2, p0, Lp/x;->k:I

    if-eq p2, v1, :cond_e

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Lp/x;->k:I

    iget v0, p0, Lp/x;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    move v3, v4

    :goto_6
    invoke-static {p1, p2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    goto :goto_7

    :cond_e
    iget p2, p0, Lp/x;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    :cond_f
    :goto_7
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Lp/d0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lp/i;->i(Landroid/graphics/drawable/Drawable;Lp/d0;[I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lp/x;->b:Lp/d0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp/x;->c:Lp/d0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lp/x;->d:Lp/d0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lp/x;->e:Lp/d0;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, Lp/x;->b:Lp/d0;

    invoke-virtual {p0, v3, v4}, Lp/x;->a(Landroid/graphics/drawable/Drawable;Lp/d0;)V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Lp/x;->c:Lp/d0;

    invoke-virtual {p0, v3, v4}, Lp/x;->a(Landroid/graphics/drawable/Drawable;Lp/d0;)V

    aget-object v3, v0, v1

    iget-object v4, p0, Lp/x;->d:Lp/d0;

    invoke-virtual {p0, v3, v4}, Lp/x;->a(Landroid/graphics/drawable/Drawable;Lp/d0;)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iget-object v3, p0, Lp/x;->e:Lp/d0;

    invoke-virtual {p0, v0, v3}, Lp/x;->a(Landroid/graphics/drawable/Drawable;Lp/d0;)V

    :cond_1
    iget-object v0, p0, Lp/x;->f:Lp/d0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lp/x;->g:Lp/d0;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Lp/x;->f:Lp/d0;

    invoke-virtual {p0, v2, v3}, Lp/x;->a(Landroid/graphics/drawable/Drawable;Lp/d0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Lp/x;->g:Lp/d0;

    invoke-virtual {p0, v0, v1}, Lp/x;->a(Landroid/graphics/drawable/Drawable;Lp/d0;)V

    :cond_3
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->a()V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->g()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->h()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->i()I

    move-result v0

    return v0
.end method

.method public h()[I
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->k()I

    move-result v0

    return v0
.end method

.method public j()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lp/x;->h:Lp/d0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lp/d0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lp/x;->h:Lp/d0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lp/d0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->o()Z

    move-result v0

    return v0
.end method

.method public m(Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v0, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Lp/i;->b()Lp/i;

    move-result-object v11

    sget-object v0, Lh/j;->a0:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v0, v9, v12}, Lp/f0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lp/f0;

    move-result-object v13

    iget-object v0, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lh/j;->a0:[I

    invoke-virtual {v13}, Lp/f0;->r()Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, LS/C;->e0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget v0, Lh/j;->b0:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Lp/f0;->n(II)I

    move-result v0

    sget v1, Lh/j;->e0:I

    invoke-virtual {v13, v1}, Lp/f0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lh/j;->e0:I

    invoke-virtual {v13, v1, v12}, Lp/f0;->n(II)I

    move-result v1

    invoke-static {v10, v11, v1}, Lp/x;->d(Landroid/content/Context;Lp/i;I)Lp/d0;

    move-result-object v1

    iput-object v1, v7, Lp/x;->b:Lp/d0;

    :cond_0
    sget v1, Lh/j;->c0:I

    invoke-virtual {v13, v1}, Lp/f0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lh/j;->c0:I

    invoke-virtual {v13, v1, v12}, Lp/f0;->n(II)I

    move-result v1

    invoke-static {v10, v11, v1}, Lp/x;->d(Landroid/content/Context;Lp/i;I)Lp/d0;

    move-result-object v1

    iput-object v1, v7, Lp/x;->c:Lp/d0;

    :cond_1
    sget v1, Lh/j;->f0:I

    invoke-virtual {v13, v1}, Lp/f0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lh/j;->f0:I

    invoke-virtual {v13, v1, v12}, Lp/f0;->n(II)I

    move-result v1

    invoke-static {v10, v11, v1}, Lp/x;->d(Landroid/content/Context;Lp/i;I)Lp/d0;

    move-result-object v1

    iput-object v1, v7, Lp/x;->d:Lp/d0;

    :cond_2
    sget v1, Lh/j;->d0:I

    invoke-virtual {v13, v1}, Lp/f0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lh/j;->d0:I

    invoke-virtual {v13, v1, v12}, Lp/f0;->n(II)I

    move-result v1

    invoke-static {v10, v11, v1}, Lp/x;->d(Landroid/content/Context;Lp/i;I)Lp/d0;

    move-result-object v1

    iput-object v1, v7, Lp/x;->e:Lp/d0;

    :cond_3
    sget v1, Lh/j;->g0:I

    invoke-virtual {v13, v1}, Lp/f0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lh/j;->g0:I

    invoke-virtual {v13, v1, v12}, Lp/f0;->n(II)I

    move-result v1

    invoke-static {v10, v11, v1}, Lp/x;->d(Landroid/content/Context;Lp/i;I)Lp/d0;

    move-result-object v1

    iput-object v1, v7, Lp/x;->f:Lp/d0;

    :cond_4
    sget v1, Lh/j;->h0:I

    invoke-virtual {v13, v1}, Lp/f0;->s(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lh/j;->h0:I

    invoke-virtual {v13, v1, v12}, Lp/f0;->n(II)I

    move-result v1

    invoke-static {v10, v11, v1}, Lp/x;->d(Landroid/content/Context;Lp/i;I)Lp/d0;

    move-result-object v1

    iput-object v1, v7, Lp/x;->g:Lp/d0;

    :cond_5
    invoke-virtual {v13}, Lp/f0;->w()V

    iget-object v1, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eq v0, v14, :cond_9

    sget-object v3, Lh/j;->X2:[I

    invoke-static {v10, v0, v3}, Lp/f0;->t(Landroid/content/Context;I[I)Lp/f0;

    move-result-object v0

    if-nez v1, :cond_6

    sget v3, Lh/j;->g3:I

    invoke-virtual {v0, v3}, Lp/f0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lh/j;->g3:I

    invoke-virtual {v0, v3, v12}, Lp/f0;->a(IZ)Z

    move-result v3

    move v4, v2

    goto :goto_0

    :cond_6
    move v3, v12

    move v4, v3

    :goto_0
    invoke-virtual {v7, v10, v0}, Lp/x;->B(Landroid/content/Context;Lp/f0;)V

    sget v5, Lh/j;->h3:I

    invoke-virtual {v0, v5}, Lp/f0;->s(I)Z

    move-result v5

    if-eqz v5, :cond_7

    sget v5, Lh/j;->h3:I

    invoke-virtual {v0, v5}, Lp/f0;->o(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    move-object v5, v13

    :goto_1
    sget v6, Lh/j;->f3:I

    invoke-virtual {v0, v6}, Lp/f0;->s(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget v6, Lh/j;->f3:I

    invoke-virtual {v0, v6}, Lp/f0;->o(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_8
    move-object v6, v13

    :goto_2
    invoke-virtual {v0}, Lp/f0;->w()V

    goto :goto_3

    :cond_9
    move v3, v12

    move v4, v3

    move-object v5, v13

    move-object v6, v5

    :goto_3
    sget-object v0, Lh/j;->X2:[I

    invoke-static {v10, v8, v0, v9, v12}, Lp/f0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lp/f0;

    move-result-object v0

    if-nez v1, :cond_a

    sget v15, Lh/j;->g3:I

    invoke-virtual {v0, v15}, Lp/f0;->s(I)Z

    move-result v15

    if-eqz v15, :cond_a

    sget v3, Lh/j;->g3:I

    invoke-virtual {v0, v3, v12}, Lp/f0;->a(IZ)Z

    move-result v3

    goto :goto_4

    :cond_a
    move v2, v4

    :goto_4
    sget v4, Lh/j;->h3:I

    invoke-virtual {v0, v4}, Lp/f0;->s(I)Z

    move-result v4

    if-eqz v4, :cond_b

    sget v4, Lh/j;->h3:I

    invoke-virtual {v0, v4}, Lp/f0;->o(I)Ljava/lang/String;

    move-result-object v5

    :cond_b
    sget v4, Lh/j;->f3:I

    invoke-virtual {v0, v4}, Lp/f0;->s(I)Z

    move-result v4

    if-eqz v4, :cond_c

    sget v4, Lh/j;->f3:I

    invoke-virtual {v0, v4}, Lp/f0;->o(I)Ljava/lang/String;

    move-result-object v6

    :cond_c
    sget v4, Lh/j;->Y2:I

    invoke-virtual {v0, v4}, Lp/f0;->s(I)Z

    move-result v4

    if-eqz v4, :cond_d

    sget v4, Lh/j;->Y2:I

    invoke-virtual {v0, v4, v14}, Lp/f0;->f(II)I

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v7, Lp/x;->a:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-virtual {v7, v10, v0}, Lp/x;->B(Landroid/content/Context;Lp/f0;)V

    invoke-virtual {v0}, Lp/f0;->w()V

    if-nez v1, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v7, v3}, Lp/x;->r(Z)V

    :cond_e
    iget-object v0, v7, Lp/x;->l:Landroid/graphics/Typeface;

    if-eqz v0, :cond_10

    iget v1, v7, Lp/x;->k:I

    if-ne v1, v14, :cond_f

    iget-object v1, v7, Lp/x;->a:Landroid/widget/TextView;

    iget v2, v7, Lp/x;->j:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_5

    :cond_f
    iget-object v1, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_5
    if-eqz v6, :cond_11

    iget-object v0, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_11
    if-eqz v5, :cond_12

    iget-object v0, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_12
    iget-object v0, v7, Lp/x;->i:Lp/z;

    invoke-virtual {v0, v8, v9}, Lp/z;->p(Landroid/util/AttributeSet;I)V

    sget-boolean v0, LX/b;->a:Z

    if-eqz v0, :cond_14

    iget-object v0, v7, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->k()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v7, Lp/x;->i:Lp/z;

    invoke-virtual {v0}, Lp/z;->j()[I

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_14

    iget-object v1, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_13

    iget-object v0, v7, Lp/x;->a:Landroid/widget/TextView;

    iget-object v1, v7, Lp/x;->i:Lp/z;

    invoke-virtual {v1}, Lp/z;->h()I

    move-result v1

    iget-object v2, v7, Lp/x;->i:Lp/z;

    invoke-virtual {v2}, Lp/z;->g()I

    move-result v2

    iget-object v3, v7, Lp/x;->i:Lp/z;

    invoke-virtual {v3}, Lp/z;->i()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_6

    :cond_13
    iget-object v1, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_14
    :goto_6
    sget-object v0, Lh/j;->i0:[I

    invoke-static {v10, v8, v0}, Lp/f0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lp/f0;

    move-result-object v8

    sget v0, Lh/j;->q0:I

    invoke-virtual {v8, v0, v14}, Lp/f0;->n(II)I

    move-result v0

    if-eq v0, v14, :cond_15

    invoke-virtual {v11, v10, v0}, Lp/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    :cond_15
    move-object v1, v13

    :goto_7
    sget v0, Lh/j;->v0:I

    invoke-virtual {v8, v0, v14}, Lp/f0;->n(II)I

    move-result v0

    if-eq v0, v14, :cond_16

    invoke-virtual {v11, v10, v0}, Lp/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_8

    :cond_16
    move-object v2, v13

    :goto_8
    sget v0, Lh/j;->r0:I

    invoke-virtual {v8, v0, v14}, Lp/f0;->n(II)I

    move-result v0

    if-eq v0, v14, :cond_17

    invoke-virtual {v11, v10, v0}, Lp/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    goto :goto_9

    :cond_17
    move-object v3, v13

    :goto_9
    sget v0, Lh/j;->o0:I

    invoke-virtual {v8, v0, v14}, Lp/f0;->n(II)I

    move-result v0

    if-eq v0, v14, :cond_18

    invoke-virtual {v11, v10, v0}, Lp/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_a

    :cond_18
    move-object v4, v13

    :goto_a
    sget v0, Lh/j;->s0:I

    invoke-virtual {v8, v0, v14}, Lp/f0;->n(II)I

    move-result v0

    if-eq v0, v14, :cond_19

    invoke-virtual {v11, v10, v0}, Lp/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_b

    :cond_19
    move-object v5, v13

    :goto_b
    sget v0, Lh/j;->p0:I

    invoke-virtual {v8, v0, v14}, Lp/f0;->n(II)I

    move-result v0

    if-eq v0, v14, :cond_1a

    invoke-virtual {v11, v10, v0}, Lp/i;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_c

    :cond_1a
    move-object v6, v13

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lp/x;->x(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v0, Lh/j;->t0:I

    invoke-virtual {v8, v0}, Lp/f0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget v0, Lh/j;->t0:I

    invoke-virtual {v8, v0}, Lp/f0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, LX/h;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_1b
    sget v0, Lh/j;->u0:I

    invoke-virtual {v8, v0}, Lp/f0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget v0, Lh/j;->u0:I

    invoke-virtual {v8, v0, v14}, Lp/f0;->k(II)I

    move-result v0

    invoke-static {v0, v13}, Lp/K;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v1, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, LX/h;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1c
    sget v0, Lh/j;->w0:I

    invoke-virtual {v8, v0, v14}, Lp/f0;->f(II)I

    move-result v0

    sget v1, Lh/j;->x0:I

    invoke-virtual {v8, v1, v14}, Lp/f0;->f(II)I

    move-result v1

    sget v2, Lh/j;->y0:I

    invoke-virtual {v8, v2, v14}, Lp/f0;->f(II)I

    move-result v2

    invoke-virtual {v8}, Lp/f0;->w()V

    if-eq v0, v14, :cond_1d

    iget-object v3, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-static {v3, v0}, LX/h;->i(Landroid/widget/TextView;I)V

    :cond_1d
    if-eq v1, v14, :cond_1e

    iget-object v0, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, LX/h;->j(Landroid/widget/TextView;I)V

    :cond_1e
    if-eq v2, v14, :cond_1f

    iget-object v0, v7, Lp/x;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, LX/h;->k(Landroid/widget/TextView;I)V

    :cond_1f
    return-void
.end method

.method public n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 1

    iget-boolean v0, p0, Lp/x;->m:Z

    if-eqz v0, :cond_0

    iput-object p2, p0, Lp/x;->l:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lp/x;->j:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public o(ZIIII)V
    .locals 0

    sget-boolean p1, LX/b;->a:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lp/x;->c()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 0

    invoke-virtual {p0}, Lp/x;->b()V

    return-void
.end method

.method public q(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lh/j;->X2:[I

    invoke-static {p1, p2, v0}, Lp/f0;->t(Landroid/content/Context;I[I)Lp/f0;

    move-result-object p2

    sget v0, Lh/j;->g3:I

    invoke-virtual {p2, v0}, Lp/f0;->s(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lh/j;->g3:I

    invoke-virtual {p2, v0, v1}, Lp/f0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lp/x;->r(Z)V

    :cond_0
    sget v0, Lh/j;->Y2:I

    invoke-virtual {p2, v0}, Lp/f0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lh/j;->Y2:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Lp/f0;->f(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lp/x;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lp/x;->B(Landroid/content/Context;Lp/f0;)V

    sget p1, Lh/j;->f3:I

    invoke-virtual {p2, p1}, Lp/f0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lh/j;->f3:I

    invoke-virtual {p2, p1}, Lp/f0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {p2}, Lp/f0;->w()V

    iget-object p1, p0, Lp/x;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lp/x;->a:Landroid/widget/TextView;

    iget v0, p0, Lp/x;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method public s(IIII)V
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0, p1, p2, p3, p4}, Lp/z;->q(IIII)V

    return-void
.end method

.method public t([II)V
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0, p1, p2}, Lp/z;->r([II)V

    return-void
.end method

.method public u(I)V
    .locals 1

    iget-object v0, p0, Lp/x;->i:Lp/z;

    invoke-virtual {v0, p1}, Lp/z;->s(I)V

    return-void
.end method

.method public v(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lp/x;->h:Lp/d0;

    if-nez v0, :cond_0

    new-instance v0, Lp/d0;

    invoke-direct {v0}, Lp/d0;-><init>()V

    iput-object v0, p0, Lp/x;->h:Lp/d0;

    :cond_0
    iget-object v0, p0, Lp/x;->h:Lp/d0;

    iput-object p1, v0, Lp/d0;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lp/d0;->d:Z

    invoke-virtual {p0}, Lp/x;->y()V

    return-void
.end method

.method public w(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lp/x;->h:Lp/d0;

    if-nez v0, :cond_0

    new-instance v0, Lp/d0;

    invoke-direct {v0}, Lp/d0;-><init>()V

    iput-object v0, p0, Lp/x;->h:Lp/d0;

    :cond_0
    iget-object v0, p0, Lp/x;->h:Lp/d0;

    iput-object p1, v0, Lp/d0;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lp/d0;->c:Z

    invoke-virtual {p0}, Lp/x;->y()V

    return-void
.end method

.method public final x(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p5, :cond_a

    if-eqz p6, :cond_0

    goto :goto_7

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_f

    :cond_1
    iget-object p5, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    aget-object p6, p5, v2

    if-nez p6, :cond_7

    aget-object v4, p5, v3

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    iget-object p5, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iget-object p6, p0, Lp/x;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    aget-object p1, p5, v2

    :goto_0
    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    aget-object p2, p5, v1

    :goto_1
    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    aget-object p3, p5, v3

    :goto_2
    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    aget-object p4, p5, v0

    :goto_3
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_7
    :goto_4
    iget-object p1, p0, Lp/x;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    aget-object p2, p5, v1

    :goto_5
    aget-object p3, p5, v3

    if-eqz p4, :cond_9

    goto :goto_6

    :cond_9
    aget-object p4, p5, v0

    :goto_6
    invoke-virtual {p1, p6, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_a
    :goto_7
    iget-object p1, p0, Lp/x;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p3, p0, Lp/x;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_b

    goto :goto_8

    :cond_b
    aget-object p5, p1, v2

    :goto_8
    if-eqz p2, :cond_c

    goto :goto_9

    :cond_c
    aget-object p2, p1, v1

    :goto_9
    if-eqz p6, :cond_d

    goto :goto_a

    :cond_d
    aget-object p6, p1, v3

    :goto_a
    if-eqz p4, :cond_e

    goto :goto_b

    :cond_e
    aget-object p4, p1, v0

    :goto_b
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_c
    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lp/x;->h:Lp/d0;

    iput-object v0, p0, Lp/x;->b:Lp/d0;

    iput-object v0, p0, Lp/x;->c:Lp/d0;

    iput-object v0, p0, Lp/x;->d:Lp/d0;

    iput-object v0, p0, Lp/x;->e:Lp/d0;

    iput-object v0, p0, Lp/x;->f:Lp/d0;

    iput-object v0, p0, Lp/x;->g:Lp/d0;

    return-void
.end method

.method public z(IF)V
    .locals 1

    sget-boolean v0, LX/b;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp/x;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lp/x;->A(IF)V

    :cond_0
    return-void
.end method
