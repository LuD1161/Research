.class public LB/h;
.super LB/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(LA/e;)V
    .locals 1

    invoke-direct {p0, p1}, LB/m;-><init>(LA/e;)V

    iget-object v0, p1, LA/e;->e:LB/j;

    invoke-virtual {v0}, LB/j;->f()V

    iget-object v0, p1, LA/e;->f:LB/l;

    invoke-virtual {v0}, LB/l;->f()V

    check-cast p1, LA/g;

    invoke-virtual {p1}, LA/g;->G0()I

    move-result p1

    iput p1, p0, LB/m;->f:I

    return-void
.end method


# virtual methods
.method public a(LB/d;)V
    .locals 1

    iget-object p1, p0, LB/m;->h:LB/f;

    iget-boolean v0, p1, LB/f;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, LB/f;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB/f;

    iget-object v0, p0, LB/m;->b:LA/e;

    check-cast v0, LA/g;

    iget p1, p1, LB/f;->g:I

    int-to-float p1, p1

    invoke-virtual {v0}, LA/g;->J0()F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, LB/m;->h:LB/f;

    invoke-virtual {v0, p1}, LB/f;->d(I)V

    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, LB/m;->b:LA/e;

    check-cast v0, LA/g;

    invoke-virtual {v0}, LA/g;->H0()I

    move-result v1

    invoke-virtual {v0}, LA/g;->I0()I

    move-result v2

    invoke-virtual {v0}, LA/g;->J0()F

    invoke-virtual {v0}, LA/g;->G0()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    if-eq v1, v3, :cond_0

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->N:LA/e;

    iget-object v2, v2, LA/e;->e:LB/j;

    iget-object v2, v2, LB/m;->h:LB/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->N:LA/e;

    iget-object v0, v0, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->h:LB/f;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v2, p0, LB/m;->h:LB/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->h:LB/f;

    iput v1, v0, LB/f;->f:I

    goto :goto_0

    :cond_0
    if-eq v2, v3, :cond_1

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->e:LB/j;

    iget-object v1, v1, LB/m;->i:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->N:LA/e;

    iget-object v0, v0, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->i:LB/f;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->h:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->h:LB/f;

    neg-int v1, v2

    iput v1, v0, LB/f;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, LB/m;->h:LB/f;

    iput-boolean v4, v0, LB/f;->b:Z

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->e:LB/j;

    iget-object v1, v1, LB/m;->i:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->N:LA/e;

    iget-object v0, v0, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->i:LB/f;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->h:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->h:LB/f;

    invoke-virtual {p0, v0}, LB/h;->q(LB/f;)V

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->e:LB/j;

    iget-object v0, v0, LB/m;->i:LB/f;

    invoke-virtual {p0, v0}, LB/h;->q(LB/f;)V

    goto/16 :goto_2

    :cond_2
    if-eq v1, v3, :cond_3

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    iget-object v2, p0, LB/m;->b:LA/e;

    iget-object v2, v2, LA/e;->N:LA/e;

    iget-object v2, v2, LA/e;->f:LB/l;

    iget-object v2, v2, LB/m;->h:LB/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->N:LA/e;

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->h:LB/f;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v2, p0, LB/m;->h:LB/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->h:LB/f;

    iput v1, v0, LB/f;->f:I

    goto :goto_1

    :cond_3
    if-eq v2, v3, :cond_4

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->f:LB/l;

    iget-object v1, v1, LB/m;->i:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->N:LA/e;

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->i:LB/f;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->h:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->h:LB/f;

    neg-int v1, v2

    iput v1, v0, LB/f;->f:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, LB/m;->h:LB/f;

    iput-boolean v4, v0, LB/f;->b:Z

    iget-object v0, v0, LB/f;->l:Ljava/util/List;

    iget-object v1, p0, LB/m;->b:LA/e;

    iget-object v1, v1, LA/e;->N:LA/e;

    iget-object v1, v1, LA/e;->f:LB/l;

    iget-object v1, v1, LB/m;->i:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->N:LA/e;

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->i:LB/f;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    iget-object v1, p0, LB/m;->h:LB/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->h:LB/f;

    invoke-virtual {p0, v0}, LB/h;->q(LB/f;)V

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v0, v0, LA/e;->f:LB/l;

    iget-object v0, v0, LB/m;->i:LB/f;

    invoke-virtual {p0, v0}, LB/h;->q(LB/f;)V

    :goto_2
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, LB/m;->b:LA/e;

    check-cast v0, LA/g;

    invoke-virtual {v0}, LA/g;->G0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget v1, v1, LB/f;->g:I

    invoke-virtual {v0, v1}, LA/e;->B0(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB/m;->b:LA/e;

    iget-object v1, p0, LB/m;->h:LB/f;

    iget v1, v1, LB/f;->g:I

    invoke-virtual {v0, v1}, LA/e;->C0(I)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LB/m;->h:LB/f;

    invoke-virtual {v0}, LB/f;->c()V

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q(LB/f;)V
    .locals 1

    iget-object v0, p0, LB/m;->h:LB/f;

    iget-object v0, v0, LB/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, LB/f;->l:Ljava/util/List;

    iget-object v0, p0, LB/m;->h:LB/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
