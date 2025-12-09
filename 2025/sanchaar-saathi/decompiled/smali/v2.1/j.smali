.class public final Lv2/j;
.super Lw2/j;
.source "SourceFile"


# instance fields
.field public final synthetic f:LR1/g;

.field public final synthetic g:Lv2/m;


# direct methods
.method public constructor <init>(Lv2/m;LR1/g;LR1/g;)V
    .locals 0

    iput-object p3, p0, Lv2/j;->f:LR1/g;

    iput-object p1, p0, Lv2/j;->g:Lv2/m;

    invoke-direct {p0, p2}, Lw2/j;-><init>(LR1/g;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const-string v0, "unity"

    const-string v1, "native"

    :try_start_0
    iget-object v2, p0, Lv2/j;->g:Lv2/m;

    iget-object v2, v2, Lv2/m;->a:Lw2/t;

    invoke-virtual {v2}, Lw2/t;->e()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lw2/f;

    iget-object v3, p0, Lv2/j;->g:Lv2/m;

    invoke-static {v3}, Lv2/m;->c(Lv2/m;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lv2/n;->a()Ljava/util/Map;

    move-result-object v5

    const-string v6, "playcore_version_code"

    const-string v7, "java"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "playcore_native_version"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v6, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "playcore_unity_version"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    new-instance v0, Lv2/l;

    iget-object v1, p0, Lv2/j;->g:Lv2/m;

    iget-object v5, p0, Lv2/j;->f:LR1/g;

    invoke-static {v1}, Lv2/m;->c(Lv2/m;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6}, Lv2/l;-><init>(Lv2/m;LR1/g;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4, v0}, Lw2/f;->y(Ljava/lang/String;Landroid/os/Bundle;Lw2/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v1, p0, Lv2/j;->g:Lv2/m;

    invoke-static {}, Lv2/m;->b()Lw2/i;

    move-result-object v2

    invoke-static {v1}, Lv2/m;->c(Lv2/m;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "error requesting in-app review for %s"

    invoke-virtual {v2, v0, v3, v1}, Lw2/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lv2/j;->f:LR1/g;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void
.end method
