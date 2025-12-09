.class public Ln/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:J

.field public c:Landroid/view/animation/Interpolator;

.field public d:LS/L;

.field public e:Z

.field public final f:LS/M;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ln/h;->b:J

    new-instance v0, Ln/h$a;

    invoke-direct {v0, p0}, Ln/h$a;-><init>(Ln/h;)V

    iput-object v0, p0, Ln/h;->f:LS/M;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln/h;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ln/h;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS/K;

    invoke-virtual {v1}, LS/K;->c()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/h;->e:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/h;->e:Z

    return-void
.end method

.method public c(LS/K;)Ln/h;
    .locals 1

    iget-boolean v0, p0, Ln/h;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ln/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public d(LS/K;LS/K;)Ln/h;
    .locals 2

    iget-object v0, p0, Ln/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LS/K;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, LS/K;->j(J)LS/K;

    iget-object p1, p0, Ln/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(J)Ln/h;
    .locals 1

    iget-boolean v0, p0, Ln/h;->e:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Ln/h;->b:J

    :cond_0
    return-object p0
.end method

.method public f(Landroid/view/animation/Interpolator;)Ln/h;
    .locals 1

    iget-boolean v0, p0, Ln/h;->e:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Ln/h;->c:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method

.method public g(LS/L;)Ln/h;
    .locals 1

    iget-boolean v0, p0, Ln/h;->e:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Ln/h;->d:LS/L;

    :cond_0
    return-object p0
.end method

.method public h()V
    .locals 6

    iget-boolean v0, p0, Ln/h;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS/K;

    iget-wide v2, p0, Ln/h;->b:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v1, v2, v3}, LS/K;->f(J)LS/K;

    :cond_1
    iget-object v2, p0, Ln/h;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, LS/K;->g(Landroid/view/animation/Interpolator;)LS/K;

    :cond_2
    iget-object v2, p0, Ln/h;->d:LS/L;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ln/h;->f:LS/M;

    invoke-virtual {v1, v2}, LS/K;->h(LS/L;)LS/K;

    :cond_3
    invoke-virtual {v1}, LS/K;->l()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Ln/h;->e:Z

    return-void
.end method
