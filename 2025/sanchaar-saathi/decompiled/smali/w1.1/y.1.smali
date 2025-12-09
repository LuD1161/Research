.class public final Lw1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lu1/a;

.field public final synthetic f:Lw1/z;


# direct methods
.method public constructor <init>(Lw1/z;Lu1/a;)V
    .locals 0

    iput-object p2, p0, Lw1/y;->e:Lu1/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/y;->f:Lw1/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lw1/y;->f:Lw1/z;

    iget-object v1, v0, Lw1/z;->f:Lw1/e;

    invoke-virtual {v1}, Lw1/e;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lw1/z;->g()Lw1/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/w;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lw1/y;->e:Lu1/a;

    invoke-virtual {v2}, Lu1/a;->i()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lw1/z;->h(Z)V

    invoke-virtual {v0}, Lw1/z;->f()Lv1/a$f;

    move-result-object v2

    invoke-interface {v2}, Lv1/a$f;->o()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lw1/z;->f()Lv1/a$f;

    move-result-object v2

    invoke-virtual {v0}, Lw1/z;->f()Lv1/a$f;

    move-result-object v0

    invoke-interface {v0}, Lv1/a$f;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lv1/a$f;->p(Lz1/j;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lw1/y;->f:Lw1/z;

    invoke-virtual {v0}, Lw1/z;->f()Lv1/a$f;

    move-result-object v0

    const-string v2, "Failed to get service from broker."

    invoke-interface {v0, v2}, Lv1/a$f;->e(Ljava/lang/String;)V

    new-instance v0, Lu1/a;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lu1/a;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Lw1/w;->q(Lu1/a;Ljava/lang/Exception;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lw1/z;->e()V

    return-void

    :cond_2
    iget-object v0, p0, Lw1/y;->e:Lu1/a;

    invoke-virtual {v1, v0, v3}, Lw1/w;->q(Lu1/a;Ljava/lang/Exception;)V

    return-void
.end method
