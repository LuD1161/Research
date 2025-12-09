.class public abstract Lp2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lp2/e;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lp2/e;
    .locals 3

    const-class v0, Lp2/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp2/h;->a:Lp2/e;

    if-nez v1, :cond_0

    new-instance v1, Lp2/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lp2/g;-><init>(Lp2/f;)V

    new-instance v2, Lp2/n;

    invoke-static {p0}, Lq2/F;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lp2/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lp2/g;->b(Lp2/n;)Lp2/g;

    invoke-virtual {v1}, Lp2/g;->a()Lp2/e;

    move-result-object p0

    sput-object p0, Lp2/h;->a:Lp2/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lp2/h;->a:Lp2/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
