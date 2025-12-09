.class public final Lw1/p;
.super Lw1/Y;
.source "SourceFile"


# instance fields
.field public final h:Lv/b;

.field public final i:Lw1/e;


# direct methods
.method public constructor <init>(Lw1/h;Lw1/e;Lu1/d;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lw1/Y;-><init>(Lw1/h;Lu1/d;)V

    new-instance p1, Lv/b;

    invoke-direct {p1}, Lv/b;-><init>()V

    iput-object p1, p0, Lw1/p;->h:Lv/b;

    iput-object p2, p0, Lw1/p;->i:Lw1/e;

    iget-object p1, p0, Lw1/g;->c:Lw1/h;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Lw1/h;->a(Ljava/lang/String;Lw1/g;)V

    return-void
.end method

.method public static t(Landroid/app/Activity;Lw1/e;Lw1/b;)V
    .locals 2

    invoke-static {p0}, Lw1/g;->c(Landroid/app/Activity;)Lw1/h;

    move-result-object p0

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v1, Lw1/p;

    invoke-interface {p0, v0, v1}, Lw1/h;->c(Ljava/lang/String;Ljava/lang/Class;)Lw1/g;

    move-result-object v0

    check-cast v0, Lw1/p;

    if-nez v0, :cond_0

    new-instance v0, Lw1/p;

    invoke-static {}, Lu1/d;->m()Lu1/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lw1/p;-><init>(Lw1/h;Lw1/e;Lu1/d;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lw1/p;->h:Lv/b;

    invoke-virtual {p0, p2}, Lv/b;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lw1/e;->p(Lw1/p;)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-super {p0}, Lw1/g;->h()V

    invoke-virtual {p0}, Lw1/p;->v()V

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-super {p0}, Lw1/Y;->j()V

    invoke-virtual {p0}, Lw1/p;->v()V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-super {p0}, Lw1/Y;->k()V

    iget-object v0, p0, Lw1/p;->i:Lw1/e;

    invoke-virtual {v0, p0}, Lw1/e;->q(Lw1/p;)V

    return-void
.end method

.method public final o(Lu1/a;I)V
    .locals 1

    iget-object v0, p0, Lw1/p;->i:Lw1/e;

    invoke-virtual {v0, p1, p2}, Lw1/e;->x(Lu1/a;I)V

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lw1/p;->i:Lw1/e;

    invoke-virtual {v0}, Lw1/e;->s()V

    return-void
.end method

.method public final u()Lv/b;
    .locals 1

    iget-object v0, p0, Lw1/p;->h:Lv/b;

    return-object v0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lw1/p;->h:Lv/b;

    invoke-virtual {v0}, Lv/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw1/p;->i:Lw1/e;

    invoke-virtual {v0, p0}, Lw1/e;->p(Lw1/p;)V

    :cond_0
    return-void
.end method
