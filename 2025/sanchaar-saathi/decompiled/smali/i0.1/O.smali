.class public Li0/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li0/C;

.field public final b:Li0/P;

.field public final c:Li0/p;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Li0/C;Li0/P;Li0/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li0/O;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Li0/O;->e:I

    .line 4
    iput-object p1, p0, Li0/O;->a:Li0/C;

    .line 5
    iput-object p2, p0, Li0/O;->b:Li0/P;

    .line 6
    iput-object p3, p0, Li0/O;->c:Li0/p;

    return-void
.end method

.method public constructor <init>(Li0/C;Li0/P;Li0/p;Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Li0/O;->d:Z

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Li0/O;->e:I

    .line 23
    iput-object p1, p0, Li0/O;->a:Li0/C;

    .line 24
    iput-object p2, p0, Li0/O;->b:Li0/P;

    .line 25
    iput-object p3, p0, Li0/O;->c:Li0/p;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p3, Li0/p;->e:Landroid/util/SparseArray;

    .line 27
    iput-object p1, p3, Li0/p;->f:Landroid/os/Bundle;

    .line 28
    iput v0, p3, Li0/p;->v:I

    .line 29
    iput-boolean v0, p3, Li0/p;->s:Z

    .line 30
    iput-boolean v0, p3, Li0/p;->n:Z

    .line 31
    iget-object p2, p3, Li0/p;->j:Li0/p;

    if-eqz p2, :cond_0

    iget-object p2, p2, Li0/p;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Li0/p;->k:Ljava/lang/String;

    .line 32
    iput-object p1, p3, Li0/p;->j:Li0/p;

    .line 33
    iput-object p4, p3, Li0/p;->d:Landroid/os/Bundle;

    .line 34
    const-string p1, "arguments"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p3, Li0/p;->i:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Li0/C;Li0/P;Ljava/lang/ClassLoader;Li0/z;Landroid/os/Bundle;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Li0/O;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Li0/O;->e:I

    .line 10
    iput-object p1, p0, Li0/O;->a:Li0/C;

    .line 11
    iput-object p2, p0, Li0/O;->b:Li0/P;

    .line 12
    const-string p1, "state"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Li0/N;

    .line 13
    invoke-virtual {p1, p4, p3}, Li0/N;->a(Li0/z;Ljava/lang/ClassLoader;)Li0/p;

    move-result-object p1

    iput-object p1, p0, Li0/O;->c:Li0/p;

    .line 14
    iput-object p5, p1, Li0/p;->d:Landroid/os/Bundle;

    .line 15
    const-string p2, "arguments"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 17
    :cond_0
    invoke-virtual {p1, p2}, Li0/p;->w1(Landroid/os/Bundle;)V

    const/4 p2, 0x2

    .line 18
    invoke-static {p2}, Li0/I;->I0(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v0}, Li0/p;->Q0(Landroid/os/Bundle;)V

    iget-object v1, p0, Li0/O;->a:Li0/C;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Li0/C;->a(Li0/p;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->K:Landroid/view/ViewGroup;

    invoke-static {v0}, Li0/I;->l0(Landroid/view/View;)Li0/p;

    move-result-object v0

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1}, Li0/p;->G()Li0/p;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Li0/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget v2, v1, Li0/p;->B:I

    invoke-static {v1, v0, v2}, Lj0/c;->j(Li0/p;Li0/p;I)V

    :cond_0
    iget-object v0, p0, Li0/O;->b:Li0/P;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Li0/P;->j(Li0/p;)I

    move-result v0

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v2, v1, Li0/p;->K:Landroid/view/ViewGroup;

    iget-object v1, v1, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public c()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v1, v0, Li0/p;->j:Li0/p;

    const/4 v2, 0x0

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    const-string v5, "Fragment "

    if-eqz v1, :cond_2

    iget-object v0, p0, Li0/O;->b:Li0/P;

    iget-object v1, v1, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li0/P;->n(Ljava/lang/String;)Li0/O;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v3, v1, Li0/p;->j:Li0/p;

    iget-object v3, v3, Li0/p;->h:Ljava/lang/String;

    iput-object v3, v1, Li0/p;->k:Ljava/lang/String;

    iput-object v2, v1, Li0/p;->j:Li0/p;

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    iget-object v2, v2, Li0/p;->j:Li0/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v0, Li0/p;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v1, v0}, Li0/P;->n(Ljava/lang/String;)Li0/O;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    iget-object v2, v2, Li0/p;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Li0/O;->m()V

    :cond_5
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v1, v0, Li0/p;->w:Li0/I;

    invoke-virtual {v1}, Li0/I;->v0()Li0/A;

    move-result-object v1

    iput-object v1, v0, Li0/p;->x:Li0/A;

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v1, v0, Li0/p;->w:Li0/I;

    invoke-virtual {v1}, Li0/I;->y0()Li0/p;

    move-result-object v1

    iput-object v1, v0, Li0/p;->z:Li0/p;

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li0/C;->g(Li0/p;Z)V

    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->R0()V

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1, v2}, Li0/C;->b(Li0/p;Z)V

    return-void
.end method

.method public d()I
    .locals 9

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v1, v0, Li0/p;->w:Li0/I;

    if-nez v1, :cond_0

    iget v0, v0, Li0/p;->c:I

    return v0

    :cond_0
    iget v1, p0, Li0/O;->e:I

    sget-object v2, Li0/O$b;->a:[I

    iget-object v0, v0, Li0/p;->V:Landroidx/lifecycle/g$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v8, v0, Li0/p;->r:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v0, Li0/p;->s:Z

    if-eqz v8, :cond_5

    iget v0, p0, Li0/O;->e:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v8, p0, Li0/O;->e:I

    if-ge v8, v4, :cond_6

    iget v0, v0, Li0/p;->c:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v0, v0, Li0/p;->n:Z

    if-nez v0, :cond_8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v8, v0, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v8, :cond_9

    invoke-virtual {v0}, Li0/p;->H()Li0/I;

    move-result-object v0

    invoke-static {v8, v0}, Li0/Z;->u(Landroid/view/ViewGroup;Li0/I;)Li0/Z;

    move-result-object v0

    invoke-virtual {v0, p0}, Li0/Z;->s(Li0/O;)Li0/Z$d$a;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    sget-object v8, Li0/Z$d$a;->f:Li0/Z$d$a;

    if-ne v0, v8, :cond_a

    const/4 v0, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_a
    sget-object v8, Li0/Z$d$a;->g:Li0/Z$d$a;

    if-ne v0, v8, :cond_b

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v8, v0, Li0/p;->o:Z

    if-eqz v8, :cond_d

    invoke-virtual {v0}, Li0/p;->c0()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_c
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_d
    :goto_3
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v3, v0, Li0/p;->M:Z

    if-eqz v3, :cond_e

    iget v0, v0, Li0/p;->c:I

    if-ge v0, v2, :cond_e

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_e
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v2, v0, Li0/p;->p:Z

    if-eqz v2, :cond_f

    iget-object v0, v0, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_f
    invoke-static {v6}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeExpectedState() of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v1
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-boolean v2, v1, Li0/p;->T:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Li0/O;->a:Li0/C;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Li0/C;->h(Li0/p;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v0}, Li0/p;->U0(Landroid/os/Bundle;)V

    iget-object v1, p0, Li0/O;->a:Li0/C;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v2, v0, v3}, Li0/C;->c(Li0/p;Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput v0, v1, Li0/p;->c:I

    invoke-virtual {v1}, Li0/p;->s1()V

    :goto_1
    return-void
.end method

.method public f()V
    .locals 8

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v0, v0, Li0/p;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto CREATE_VIEW: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->d:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, "savedInstanceState"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    iget-object v4, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v4, v1}, Li0/p;->a1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Li0/O;->c:Li0/p;

    iget-object v6, v5, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    move-object v3, v6

    goto/16 :goto_2

    :cond_3
    iget v6, v5, Li0/p;->B:I

    if-eqz v6, :cond_7

    const/4 v3, -0x1

    if-eq v6, v3, :cond_6

    iget-object v3, v5, Li0/p;->w:Li0/I;

    invoke-virtual {v3}, Li0/I;->r0()Li0/w;

    move-result-object v3

    iget-object v5, p0, Li0/O;->c:Li0/p;

    iget v5, v5, Li0/p;->B:I

    invoke-virtual {v3, v5}, Li0/w;->i(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    iget-object v5, p0, Li0/O;->c:Li0/p;

    iget-boolean v6, v5, Li0/p;->t:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {v5}, Li0/p;->N()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget v1, v1, Li0/p;->B:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "unknown"

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Li0/O;->c:Li0/p;

    iget v3, v3, Li0/p;->B:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    instance-of v5, v3, Li0/x;

    if-nez v5, :cond_7

    iget-object v5, p0, Li0/O;->c:Li0/p;

    invoke-static {v5, v3}, Lj0/c;->i(Li0/p;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    iget-object v5, p0, Li0/O;->c:Li0/p;

    iput-object v3, v5, Li0/p;->K:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v3, v1}, Li0/p;->W0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v4, p0, Li0/O;->c:Li0/p;

    iget-object v4, v4, Li0/p;->L:Landroid/view/View;

    const/4 v5, 0x2

    if-eqz v4, :cond_d

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto VIEW_CREATED: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v6, v0, Li0/p;->L:Landroid/view/View;

    sget v7, Lh0/b;->a:I

    invoke-virtual {v6, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Li0/O;->b()V

    :cond_9
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v3, v0, Li0/p;->D:Z

    if-eqz v3, :cond_a

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    invoke-static {v0}, LS/C;->d0(Landroid/view/View;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    new-instance v3, Li0/O$a;

    invoke-direct {v3, p0, v0}, Li0/O$a;-><init>(Li0/O;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_3
    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->n1()V

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v3, p0, Li0/O;->c:Li0/p;

    iget-object v6, v3, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v0, v3, v6, v1, v4}, Li0/C;->m(Li0/p;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object v3, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v3, v1}, Li0/p;->A1(F)V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v3, v1, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v3, :cond_d

    if-nez v0, :cond_d

    iget-object v0, v1, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v0}, Li0/p;->x1(Landroid/view/View;)V

    invoke-static {v5}, Li0/I;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iput v5, v0, Li0/p;->c:I

    return-void
.end method

.method public g()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v1, v0, Li0/p;->o:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Li0/p;->c0()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Li0/O;->c:Li0/p;

    iget-boolean v5, v4, Li0/p;->q:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Li0/O;->b:Li0/P;

    iget-object v4, v4, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {v5, v4, v1}, Li0/P;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    if-nez v0, :cond_5

    iget-object v4, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v4}, Li0/P;->p()Li0/L;

    move-result-object v4

    iget-object v5, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v4, v5}, Li0/L;->o(Li0/p;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v1, v0}, Li0/P;->f(Ljava/lang/String;)Li0/p;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Li0/p;->F:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iput-object v0, v1, Li0/p;->j:Li0/p;

    :cond_4
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iput v3, v0, Li0/p;->c:I

    goto/16 :goto_4

    :cond_5
    :goto_1
    iget-object v4, p0, Li0/O;->c:Li0/p;

    iget-object v4, v4, Li0/p;->x:Li0/A;

    instance-of v5, v4, Landroidx/lifecycle/I;

    if-eqz v5, :cond_6

    iget-object v2, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v2}, Li0/P;->p()Li0/L;

    move-result-object v2

    invoke-virtual {v2}, Li0/L;->l()Z

    move-result v2

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Li0/A;->o()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Li0/A;->o()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v4

    xor-int/2addr v2, v4

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v0, v0, Li0/p;->q:Z

    if-eqz v0, :cond_9

    :cond_8
    if-eqz v2, :cond_a

    :cond_9
    iget-object v0, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v0}, Li0/P;->p()Li0/L;

    move-result-object v0

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v2, v3}, Li0/L;->d(Li0/p;Z)V

    :cond_a
    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->X0()V

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v2, v3}, Li0/C;->d(Li0/p;Z)V

    iget-object v0, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v0}, Li0/P;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/O;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Li0/O;->k()Li0/p;

    move-result-object v2

    iget-object v3, p0, Li0/O;->c:Li0/p;

    iget-object v3, v3, Li0/p;->h:Ljava/lang/String;

    iget-object v4, v2, Li0/p;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Li0/O;->c:Li0/p;

    iput-object v3, v2, Li0/p;->j:Li0/p;

    iput-object v1, v2, Li0/p;->k:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v1, v0, Li0/p;->k:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v2, v1}, Li0/P;->f(Ljava/lang/String;)Li0/p;

    move-result-object v1

    iput-object v1, v0, Li0/p;->j:Li0/p;

    :cond_d
    iget-object v0, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v0, p0}, Li0/P;->s(Li0/O;)V

    :goto_4
    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v1, v0, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->Y0()V

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li0/C;->n(Li0/p;Z)V

    iget-object v0, p0, Li0/O;->c:Li0/p;

    const/4 v1, 0x0

    iput-object v1, v0, Li0/p;->K:Landroid/view/ViewGroup;

    iput-object v1, v0, Li0/p;->L:Landroid/view/View;

    iput-object v1, v0, Li0/p;->X:Li0/V;

    iget-object v0, v0, Li0/p;->Y:Landroidx/lifecycle/r;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iput-boolean v2, v0, Li0/p;->s:Z

    return-void
.end method

.method public i()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ATTACHED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1}, Li0/p;->Z0()V

    iget-object v1, p0, Li0/O;->a:Li0/C;

    iget-object v3, p0, Li0/O;->c:Li0/p;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Li0/C;->e(Li0/p;Z)V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    const/4 v3, -0x1

    iput v3, v1, Li0/p;->c:I

    const/4 v3, 0x0

    iput-object v3, v1, Li0/p;->x:Li0/A;

    iput-object v3, v1, Li0/p;->z:Li0/p;

    iput-object v3, v1, Li0/p;->w:Li0/I;

    iget-boolean v3, v1, Li0/p;->o:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Li0/p;->c0()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v1}, Li0/P;->p()Li0/L;

    move-result-object v1

    iget-object v3, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v3}, Li0/L;->o(Li0/p;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState called for fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->Y()V

    :cond_3
    return-void
.end method

.method public j()V
    .locals 5

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-boolean v1, v0, Li0/p;->r:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Li0/p;->s:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Li0/p;->u:Z

    if-nez v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->d:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v2, v0}, Li0/p;->a1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Li0/p;->W0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->L:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v3, v1, Li0/p;->L:Landroid/view/View;

    sget v4, Lh0/b;->a:I

    invoke-virtual {v3, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-boolean v3, v1, Li0/p;->D:Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Li0/p;->L:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1}, Li0/p;->n1()V

    iget-object v1, p0, Li0/O;->a:Li0/C;

    iget-object v3, p0, Li0/O;->c:Li0/p;

    iget-object v4, v3, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v1, v3, v4, v0, v2}, Li0/C;->m(Li0/p;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Li0/O;->c:Li0/p;

    const/4 v1, 0x2

    iput v1, v0, Li0/p;->c:I

    :cond_3
    return-void
.end method

.method public k()Li0/p;
    .locals 1

    iget-object v0, p0, Li0/O;->c:Li0/p;

    return-object v0
.end method

.method public final l(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public m()V
    .locals 9

    iget-boolean v0, p0, Li0/O;->d:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    if-eqz v0, :cond_1

    invoke-static {v1}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li0/O;->k()Li0/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Li0/O;->d:Z

    move v4, v0

    :goto_0
    invoke-virtual {p0}, Li0/O;->d()I

    move-result v5

    iget-object v6, p0, Li0/O;->c:Li0/p;

    iget v7, v6, Li0/p;->c:I

    const/4 v8, 0x3

    if-eq v5, v7, :cond_9

    if-le v5, v7, :cond_3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Li0/O;->p()V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :pswitch_1
    const/4 v4, 0x6

    iput v4, v6, Li0/p;->c:I

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Li0/O;->t()V

    goto/16 :goto_2

    :pswitch_3
    iget-object v4, v6, Li0/p;->L:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, v6, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Li0/p;->H()Li0/I;

    move-result-object v5

    invoke-static {v4, v5}, Li0/Z;->u(Landroid/view/ViewGroup;Li0/I;)Li0/Z;

    move-result-object v4

    iget-object v5, p0, Li0/O;->c:Li0/p;

    iget-object v5, v5, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Li0/Z$d$b;->k(I)Li0/Z$d$b;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Li0/Z;->j(Li0/Z$d$b;Li0/O;)V

    :cond_2
    iget-object v4, p0, Li0/O;->c:Li0/p;

    const/4 v5, 0x4

    iput v5, v4, Li0/p;->c:I

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Li0/O;->a()V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Li0/O;->j()V

    invoke-virtual {p0}, Li0/O;->f()V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Li0/O;->e()V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0}, Li0/O;->c()V

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0}, Li0/O;->n()V

    goto/16 :goto_2

    :pswitch_9
    const/4 v4, 0x5

    iput v4, v6, Li0/p;->c:I

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0}, Li0/O;->u()V

    goto/16 :goto_2

    :pswitch_b
    invoke-static {v8}, Li0/I;->I0(I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Li0/O;->c:Li0/p;

    iget-boolean v5, v4, Li0/p;->q:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Li0/O;->b:Li0/P;

    iget-object v4, v4, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {p0}, Li0/O;->q()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Li0/P;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1

    :cond_5
    iget-object v5, v4, Li0/p;->L:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v4, v4, Li0/p;->e:Landroid/util/SparseArray;

    if-nez v4, :cond_6

    invoke-virtual {p0}, Li0/O;->r()V

    :cond_6
    :goto_1
    iget-object v4, p0, Li0/O;->c:Li0/p;

    iget-object v5, v4, Li0/p;->L:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, v4, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Li0/p;->H()Li0/I;

    move-result-object v4

    invoke-static {v5, v4}, Li0/Z;->u(Landroid/view/ViewGroup;Li0/I;)Li0/Z;

    move-result-object v4

    invoke-virtual {v4, p0}, Li0/Z;->l(Li0/O;)V

    :cond_7
    iget-object v4, p0, Li0/O;->c:Li0/p;

    iput v8, v4, Li0/p;->c:I

    goto :goto_2

    :pswitch_c
    iput-boolean v0, v6, Li0/p;->s:Z

    iput v1, v6, Li0/p;->c:I

    goto :goto_2

    :pswitch_d
    invoke-virtual {p0}, Li0/O;->h()V

    iget-object v4, p0, Li0/O;->c:Li0/p;

    iput v3, v4, Li0/p;->c:I

    goto :goto_2

    :pswitch_e
    iget-boolean v4, v6, Li0/p;->q:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Li0/O;->b:Li0/P;

    iget-object v5, v6, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Li0/P;->q(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object v4, p0, Li0/O;->b:Li0/P;

    iget-object v5, p0, Li0/O;->c:Li0/p;

    iget-object v5, v5, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {p0}, Li0/O;->q()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Li0/P;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_8
    invoke-virtual {p0}, Li0/O;->g()V

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0}, Li0/O;->i()V

    :goto_2
    move v4, v3

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_c

    const/4 v1, -0x1

    if-ne v7, v1, :cond_c

    iget-boolean v1, v6, Li0/p;->o:Z

    if-eqz v1, :cond_c

    invoke-virtual {v6}, Li0/p;->c0()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-boolean v1, v1, Li0/p;->q:Z

    if-nez v1, :cond_c

    invoke-static {v8}, Li0/I;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up state of never attached fragment: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v1}, Li0/P;->p()Li0/L;

    move-result-object v1

    iget-object v4, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v4, v3}, Li0/L;->d(Li0/p;Z)V

    iget-object v1, p0, Li0/O;->b:Li0/P;

    invoke-virtual {v1, p0}, Li0/P;->s(Li0/O;)V

    invoke-static {v8}, Li0/I;->I0(I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initState called for fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v1}, Li0/p;->Y()V

    :cond_c
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-boolean v2, v1, Li0/p;->R:Z

    if-eqz v2, :cond_10

    iget-object v2, v1, Li0/p;->L:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, v1, Li0/p;->K:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Li0/p;->H()Li0/I;

    move-result-object v1

    invoke-static {v2, v1}, Li0/Z;->u(Landroid/view/ViewGroup;Li0/I;)Li0/Z;

    move-result-object v1

    iget-object v2, p0, Li0/O;->c:Li0/p;

    iget-boolean v2, v2, Li0/p;->D:Z

    if-eqz v2, :cond_d

    invoke-virtual {v1, p0}, Li0/Z;->k(Li0/O;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v1, p0}, Li0/Z;->m(Li0/O;)V

    :cond_e
    :goto_3
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v2, v1, Li0/p;->w:Li0/I;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Li0/I;->G0(Li0/p;)V

    :cond_f
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iput-boolean v0, v1, Li0/p;->R:Z

    iget-boolean v2, v1, Li0/p;->D:Z

    invoke-virtual {v1, v2}, Li0/p;->z0(Z)V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->y:Li0/I;

    invoke-virtual {v1}, Li0/I;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    iput-boolean v0, p0, Li0/O;->d:Z

    return-void

    :goto_4
    iput-boolean v0, p0, Li0/O;->d:Z

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->f1()V

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li0/C;->f(Li0/p;Z)V

    return-void
.end method

.method public o(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->d:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Li0/O;->c:Li0/p;

    iget-object p1, p1, Li0/p;->d:Landroid/os/Bundle;

    const-string v0, "savedInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Li0/O;->c:Li0/p;

    iget-object p1, p1, Li0/p;->d:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :try_start_0
    iget-object p1, p0, Li0/O;->c:Li0/p;

    iget-object v0, p1, Li0/p;->d:Landroid/os/Bundle;

    const-string v1, "viewState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Li0/p;->e:Landroid/util/SparseArray;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Li0/O;->c:Li0/p;

    iget-object v0, p1, Li0/p;->d:Landroid/os/Bundle;

    const-string v1, "viewRegistryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Li0/p;->f:Landroid/os/Bundle;

    iget-object p1, p0, Li0/O;->c:Li0/p;

    iget-object p1, p1, Li0/p;->d:Landroid/os/Bundle;

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Li0/N;

    if-eqz p1, :cond_3

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v1, p1, Li0/N;->p:Ljava/lang/String;

    iput-object v1, v0, Li0/p;->k:Ljava/lang/String;

    iget v1, p1, Li0/N;->q:I

    iput v1, v0, Li0/p;->l:I

    iget-object v1, v0, Li0/p;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Li0/p;->N:Z

    iget-object p1, p0, Li0/O;->c:Li0/p;

    const/4 v0, 0x0

    iput-object v0, p1, Li0/p;->g:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Li0/N;->r:Z

    iput-boolean p1, v0, Li0/p;->N:Z

    :cond_3
    :goto_0
    iget-object p1, p0, Li0/O;->c:Li0/p;

    iget-boolean v0, p1, Li0/p;->N:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p1, Li0/p;->M:Z

    :cond_4
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore view hierarchy state for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li0/O;->k()Li0/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public p()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->B()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Li0/O;->l(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3}, Li0/I;->I0(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Restoring focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string v0, "succeeded"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Li0/O;->c:Li0/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li0/p;->x1(Landroid/view/View;)V

    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->j1()V

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Li0/C;->i(Li0/p;Z)V

    iget-object v0, p0, Li0/O;->b:Li0/P;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    iget-object v2, v2, Li0/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Li0/P;->B(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iput-object v1, v0, Li0/p;->d:Landroid/os/Bundle;

    iput-object v1, v0, Li0/p;->e:Landroid/util/SparseArray;

    iput-object v1, v0, Li0/p;->f:Landroid/os/Bundle;

    return-void
.end method

.method public q()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget v2, v1, Li0/p;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Li0/p;->d:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v1, Li0/N;

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-direct {v1, v2}, Li0/N;-><init>(Li0/p;)V

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget v1, v1, Li0/p;->c:I

    if-le v1, v3, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v2, v1}, Li0/p;->k1(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Li0/O;->a:Li0/C;

    iget-object v3, p0, Li0/O;->c:Li0/p;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Li0/C;->j(Li0/p;Landroid/os/Bundle;Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Li0/O;->c:Li0/p;

    iget-object v2, v2, Li0/p;->a0:Lx0/e;

    invoke-virtual {v2, v1}, Lx0/e;->e(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "registryState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->y:Li0/I;

    invoke-virtual {v1}, Li0/I;->m1()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "childFragmentManager"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->L:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Li0/O;->r()V

    :cond_4
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->e:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    const-string v2, "viewState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_5
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    const-string v2, "viewRegistryState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->i:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    const-string v2, "arguments"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-object v0
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Li0/O;->c:Li0/p;

    iget-object v0, v0, Li0/p;->L:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving view state for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iput-object v0, v1, Li0/p;->e:Landroid/util/SparseArray;

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iget-object v1, v1, Li0/p;->X:Li0/V;

    invoke-virtual {v1, v0}, Li0/V;->f(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Li0/O;->c:Li0/p;

    iput-object v0, v1, Li0/p;->f:Landroid/os/Bundle;

    :cond_3
    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Li0/O;->e:I

    return-void
.end method

.method public t()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->l1()V

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li0/C;->k(Li0/p;Z)V

    return-void
.end method

.method public u()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/O;->c:Li0/p;

    invoke-virtual {v0}, Li0/p;->m1()V

    iget-object v0, p0, Li0/O;->a:Li0/C;

    iget-object v1, p0, Li0/O;->c:Li0/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li0/C;->l(Li0/p;Z)V

    return-void
.end method
