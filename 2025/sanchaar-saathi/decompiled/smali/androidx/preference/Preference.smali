.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public E:Ljava/util/List;

.field public F:Landroidx/preference/Preference$b;

.field public final G:Landroid/view/View$OnClickListener;

.field public final e:Landroid/content/Context;

.field public f:I

.field public g:I

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Landroid/content/Intent;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/Object;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    sget v0, Lq0/c;->g:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, LI/e;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroidx/preference/Preference;->f:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroidx/preference/Preference;->g:I

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Landroidx/preference/Preference;->n:Z

    .line 5
    iput-boolean v2, p0, Landroidx/preference/Preference;->o:Z

    .line 6
    iput-boolean v2, p0, Landroidx/preference/Preference;->p:Z

    .line 7
    iput-boolean v2, p0, Landroidx/preference/Preference;->s:Z

    .line 8
    iput-boolean v2, p0, Landroidx/preference/Preference;->t:Z

    .line 9
    iput-boolean v2, p0, Landroidx/preference/Preference;->u:Z

    .line 10
    iput-boolean v2, p0, Landroidx/preference/Preference;->v:Z

    .line 11
    iput-boolean v2, p0, Landroidx/preference/Preference;->w:Z

    .line 12
    iput-boolean v2, p0, Landroidx/preference/Preference;->y:Z

    .line 13
    iput-boolean v2, p0, Landroidx/preference/Preference;->B:Z

    .line 14
    sget v3, Lq0/e;->a:I

    iput v3, p0, Landroidx/preference/Preference;->C:I

    .line 15
    new-instance v3, Landroidx/preference/Preference$a;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$a;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->G:Landroid/view/View$OnClickListener;

    .line 16
    iput-object p1, p0, Landroidx/preference/Preference;->e:Landroid/content/Context;

    .line 17
    sget-object v3, Lq0/g;->I:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Lq0/g;->g0:I

    sget p3, Lq0/g;->J:I

    invoke-static {p1, p2, p3, v1}, LI/e;->e(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->j:I

    .line 19
    sget p2, Lq0/g;->j0:I

    sget p3, Lq0/g;->P:I

    invoke-static {p1, p2, p3}, LI/e;->f(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->k:Ljava/lang/String;

    .line 20
    sget p2, Lq0/g;->r0:I

    sget p3, Lq0/g;->N:I

    invoke-static {p1, p2, p3}, LI/e;->g(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    .line 21
    sget p2, Lq0/g;->q0:I

    sget p3, Lq0/g;->Q:I

    invoke-static {p1, p2, p3}, LI/e;->g(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->i:Ljava/lang/CharSequence;

    .line 22
    sget p2, Lq0/g;->l0:I

    sget p3, Lq0/g;->R:I

    invoke-static {p1, p2, p3, v0}, LI/e;->d(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->f:I

    .line 23
    sget p2, Lq0/g;->f0:I

    sget p3, Lq0/g;->W:I

    invoke-static {p1, p2, p3}, LI/e;->f(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->m:Ljava/lang/String;

    .line 24
    sget p2, Lq0/g;->k0:I

    sget p3, Lq0/g;->M:I

    sget p4, Lq0/e;->a:I

    invoke-static {p1, p2, p3, p4}, LI/e;->e(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->C:I

    .line 25
    sget p2, Lq0/g;->s0:I

    sget p3, Lq0/g;->S:I

    invoke-static {p1, p2, p3, v1}, LI/e;->e(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->D:I

    .line 26
    sget p2, Lq0/g;->e0:I

    sget p3, Lq0/g;->L:I

    invoke-static {p1, p2, p3, v2}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->n:Z

    .line 27
    sget p2, Lq0/g;->n0:I

    sget p3, Lq0/g;->O:I

    invoke-static {p1, p2, p3, v2}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->o:Z

    .line 28
    sget p2, Lq0/g;->m0:I

    sget p3, Lq0/g;->K:I

    invoke-static {p1, p2, p3, v2}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->p:Z

    .line 29
    sget p2, Lq0/g;->c0:I

    sget p3, Lq0/g;->T:I

    invoke-static {p1, p2, p3}, LI/e;->f(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->q:Ljava/lang/String;

    .line 30
    sget p2, Lq0/g;->Z:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->o:Z

    invoke-static {p1, p2, p2, p3}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->v:Z

    .line 31
    sget p2, Lq0/g;->a0:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->o:Z

    invoke-static {p1, p2, p2, p3}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->w:Z

    .line 32
    sget p2, Lq0/g;->b0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    sget p2, Lq0/g;->b0:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->D(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->r:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_0
    sget p2, Lq0/g;->U:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    sget p2, Lq0/g;->U:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->D(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->r:Ljava/lang/Object;

    .line 36
    :cond_1
    :goto_0
    sget p2, Lq0/g;->o0:I

    sget p3, Lq0/g;->V:I

    .line 37
    invoke-static {p1, p2, p3, v2}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->B:Z

    .line 38
    sget p2, Lq0/g;->p0:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->x:Z

    if-eqz p2, :cond_2

    .line 39
    sget p2, Lq0/g;->p0:I

    sget p3, Lq0/g;->X:I

    invoke-static {p1, p2, p3, v2}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->y:Z

    .line 40
    :cond_2
    sget p2, Lq0/g;->h0:I

    sget p3, Lq0/g;->Y:I

    invoke-static {p1, p2, p3, v1}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->z:Z

    .line 41
    sget p2, Lq0/g;->i0:I

    invoke-static {p1, p2, p2, v2}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->u:Z

    .line 42
    sget p2, Lq0/g;->d0:I

    invoke-static {p1, p2, p2, v1}, LI/e;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->A:Z

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/preference/Preference;->E:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->C(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public C(Landroidx/preference/Preference;Z)V
    .locals 0

    iget-boolean p1, p0, Landroidx/preference/Preference;->s:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroidx/preference/Preference;->s:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->L()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->A(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->z()V

    :cond_0
    return-void
.end method

.method public D(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public E(Landroidx/preference/Preference;Z)V
    .locals 0

    iget-boolean p1, p0, Landroidx/preference/Preference;->t:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroidx/preference/Preference;->t:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->L()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->A(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->z()V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->B()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Lq0/b;

    iget-object v0, p0, Landroidx/preference/Preference;->l:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->l:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public G(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->F()V

    return-void
.end method

.method public H(Z)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->o(Z)Z

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->r()Lq0/a;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public I(I)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->p(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->r()Lq0/a;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public J(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->r()Lq0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
.end method

.method public final K(Landroidx/preference/Preference$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->F:Landroidx/preference/Preference$b;

    invoke-virtual {p0}, Landroidx/preference/Preference;->z()V

    return-void
.end method

.method public L()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->x()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->f(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public f(Landroidx/preference/Preference;)I
    .locals 2

    iget v0, p0, Landroidx/preference/Preference;->f:I

    iget v1, p1, Landroidx/preference/Preference;->f:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public k()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->e:Landroid/content/Context;

    return-object v0
.end method

.method public l()Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->v()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->t()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->l:Landroid/content/Intent;

    return-object v0
.end method

.method public o(Z)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->r()Lq0/a;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public p(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->r()Lq0/a;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->r()Lq0/a;

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public r()Lq0/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lq0/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->u()Landroidx/preference/Preference$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->u()Landroidx/preference/Preference$b;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$b;->a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->l()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroidx/preference/Preference$b;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->F:Landroidx/preference/Preference$b;

    return-object v0
.end method

.method public v()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->o:Z

    return v0
.end method

.method public z()V
    .locals 0

    return-void
.end method
