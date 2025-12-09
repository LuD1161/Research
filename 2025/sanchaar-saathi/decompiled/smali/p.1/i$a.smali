.class public Lp/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/V$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp/i;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lh/e;->S:I

    sget v1, Lh/e;->Q:I

    sget v2, Lh/e;->a:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lp/i$a;->a:[I

    sget v1, Lh/e;->o:I

    sget v2, Lh/e;->B:I

    sget v3, Lh/e;->t:I

    sget v4, Lh/e;->p:I

    sget v5, Lh/e;->q:I

    sget v6, Lh/e;->s:I

    sget v7, Lh/e;->r:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Lp/i$a;->b:[I

    sget v1, Lh/e;->P:I

    sget v2, Lh/e;->R:I

    sget v3, Lh/e;->k:I

    sget v4, Lh/e;->I:I

    sget v5, Lh/e;->J:I

    sget v6, Lh/e;->L:I

    sget v7, Lh/e;->N:I

    sget v8, Lh/e;->K:I

    sget v9, Lh/e;->M:I

    sget v10, Lh/e;->O:I

    filled-new-array/range {v1 .. v10}, [I

    move-result-object v0

    iput-object v0, p0, Lp/i$a;->c:[I

    sget v0, Lh/e;->w:I

    sget v1, Lh/e;->i:I

    sget v2, Lh/e;->v:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lp/i$a;->d:[I

    sget v0, Lh/e;->H:I

    sget v1, Lh/e;->T:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lp/i$a;->e:[I

    sget v0, Lh/e;->c:I

    sget v1, Lh/e;->g:I

    sget v2, Lh/e;->d:I

    sget v3, Lh/e;->h:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lp/i$a;->f:[I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 7

    invoke-static {}, Lp/i;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v1, p0, Lp/i$a;->a:[I

    invoke-virtual {p0, v1, p2}, Lp/i$a;->f([II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    sget p2, Lh/a;->t:I

    :goto_0
    move-object v1, v0

    move v5, v2

    :goto_1
    move v0, v4

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lp/i$a;->c:[I

    invoke-virtual {p0, v1, p2}, Lp/i$a;->f([II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p2, Lh/a;->r:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lp/i$a;->d:[I

    invoke-virtual {p0, v1, p2}, Lp/i$a;->f([II)Z

    move-result v1

    const v5, 0x1010031

    if-eqz v1, :cond_2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    move-object v1, v0

    move v0, v4

    move p2, v5

    move v5, v2

    goto :goto_3

    :cond_2
    sget v1, Lh/e;->u:I

    if-ne p2, v1, :cond_3

    const p2, 0x42233333    # 40.8f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const v1, 0x1010030

    move v5, v2

    move-object v6, v0

    move v0, p2

    move p2, v1

    move-object v1, v6

    goto :goto_3

    :cond_3
    sget v1, Lh/e;->l:I

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    move p2, v3

    move v5, p2

    goto :goto_1

    :goto_3
    if-eqz v5, :cond_7

    invoke-static {p3}, Lp/K;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_5
    invoke-static {p1, p2}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v1}, Lp/i;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v0, v4, :cond_6

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return v2

    :cond_7
    return v3
.end method

.method public b(Lp/V;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Lh/e;->j:I

    if-ne p3, v0, :cond_0

    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    sget v0, Lh/e;->i:I

    invoke-virtual {p1, p2, v0}, Lp/V;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lh/e;->k:I

    invoke-virtual {p1, p2, v1}, Lp/V;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    filled-new-array {v0, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget v0, Lh/e;->F:I

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Lh/e;->m:I

    if-ne p2, v0, :cond_0

    sget p2, Lh/c;->e:I

    invoke-static {p1, p2}, Lj/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    sget v0, Lh/e;->G:I

    if-ne p2, v0, :cond_1

    sget p2, Lh/c;->h:I

    invoke-static {p1, p2}, Lj/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_1
    sget v0, Lh/e;->F:I

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Lp/i$a;->k(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_2
    sget v0, Lh/e;->f:I

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lp/i$a;->j(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_3
    sget v0, Lh/e;->b:I

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, p1}, Lp/i$a;->g(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_4
    sget v0, Lh/e;->e:I

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Lp/i$a;->i(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_5
    sget v0, Lh/e;->D:I

    if-eq p2, v0, :cond_b

    sget v0, Lh/e;->E:I

    if-ne p2, v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lp/i$a;->b:[I

    invoke-virtual {p0, v0, p2}, Lp/i$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p2, Lh/a;->t:I

    invoke-static {p1, p2}, Lp/b0;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, Lp/i$a;->e:[I

    invoke-virtual {p0, v0, p2}, Lp/i$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p2, Lh/c;->d:I

    invoke-static {p1, p2}, Lj/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v0, p0, Lp/i$a;->f:[I

    invoke-virtual {p0, v0, p2}, Lp/i$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p2, Lh/c;->c:I

    invoke-static {p1, p2}, Lj/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_9
    sget v0, Lh/e;->A:I

    if-ne p2, v0, :cond_a

    sget p2, Lh/c;->f:I

    invoke-static {p1, p2}, Lj/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1

    :cond_b
    :goto_0
    sget p2, Lh/c;->g:I

    invoke-static {p1, p2}, Lj/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 5

    sget v0, Lh/e;->C:I

    const/4 v1, 0x1

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v0, :cond_0

    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lh/a;->t:I

    invoke-static {p1, v0}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lp/i;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-virtual {p0, p2, v0, v4}, Lp/i$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lh/a;->t:I

    invoke-static {p1, v0}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lp/i;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, p2, v0, v3}, Lp/i$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lh/a;->r:I

    invoke-static {p1, p3}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {}, Lp/i;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lp/i$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1

    :cond_0
    sget v0, Lh/e;->y:I

    if-eq p2, v0, :cond_2

    sget v0, Lh/e;->x:I

    if-eq p2, v0, :cond_2

    sget v0, Lh/e;->z:I

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lh/a;->t:I

    invoke-static {p1, v0}, Lp/b0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lp/i;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-virtual {p0, p2, v0, v4}, Lp/i$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Lh/a;->r:I

    invoke-static {p1, v0}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lp/i;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, p2, v0, v3}, Lp/i$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Lh/a;->r:I

    invoke-static {p1, p3}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {}, Lp/i;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lp/i$a;->l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1
.end method

.method public final f([II)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final g(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lp/i$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Lh/a;->s:I

    invoke-static {p1, v2}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lh/a;->q:I

    invoke-static {p1, v3}, Lp/b0;->b(Landroid/content/Context;I)I

    move-result p1

    sget-object v3, Lp/b0;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    sget-object p1, Lp/b0;->e:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v2, p2}, LJ/a;->b(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Lp/b0;->c:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-static {v2, p2}, LJ/a;->b(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Lp/b0;->i:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final i(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Lh/a;->p:I

    invoke-static {p1, v0}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lp/i$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final j(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Lh/a;->q:I

    invoke-static {p1, v0}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lp/i$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final k(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Lh/a;->u:I

    invoke-static {p1, v2}, Lp/b0;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lp/b0;->b:[I

    aput-object v6, v1, v5

    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    aput v6, v0, v5

    sget-object v5, Lp/b0;->f:[I

    aput-object v5, v1, v4

    sget v5, Lh/a;->r:I

    invoke-static {p1, v5}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    sget-object p1, Lp/b0;->i:[I

    aput-object p1, v1, v3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, v0, v3

    goto :goto_0

    :cond_0
    sget-object v2, Lp/b0;->b:[I

    aput-object v2, v1, v5

    sget v2, Lh/a;->u:I

    invoke-static {p1, v2}, Lp/b0;->b(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v5

    sget-object v2, Lp/b0;->f:[I

    aput-object v2, v1, v4

    sget v2, Lh/a;->r:I

    invoke-static {p1, v2}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v4

    sget-object v2, Lp/b0;->i:[I

    aput-object v2, v1, v3

    sget v2, Lh/a;->u:I

    invoke-static {p1, v2}, Lp/b0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v3

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final l(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-static {p1}, Lp/K;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Lp/i;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    :cond_1
    invoke-static {p2, p3}, Lp/i;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
