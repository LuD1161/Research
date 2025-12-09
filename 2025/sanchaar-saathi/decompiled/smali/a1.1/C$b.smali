.class public La1/C$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:La1/C;

.field public final f:LZ0/m;


# direct methods
.method public constructor <init>(La1/C;LZ0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/C$b;->e:La1/C;

    iput-object p2, p0, La1/C$b;->f:LZ0/m;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, La1/C$b;->e:La1/C;

    iget-object v0, v0, La1/C;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La1/C$b;->e:La1/C;

    iget-object v1, v1, La1/C;->b:Ljava/util/Map;

    iget-object v2, p0, La1/C$b;->f:LZ0/m;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La1/C$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, La1/C$b;->e:La1/C;

    iget-object v1, v1, La1/C;->c:Ljava/util/Map;

    iget-object v2, p0, La1/C$b;->f:LZ0/m;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La1/C$a;

    if-eqz v1, :cond_1

    iget-object v2, p0, La1/C$b;->f:LZ0/m;

    invoke-interface {v1, v2}, La1/C$a;->a(LZ0/m;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v1

    const-string v2, "WrkTimerRunnable"

    const-string v3, "Timer with %s is already marked as complete."

    iget-object v4, p0, La1/C$b;->f:LZ0/m;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
