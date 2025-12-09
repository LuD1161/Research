.class public Lj1/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/c;->B(LY2/i;LY2/j$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lj1/a;

.field public final synthetic f:Lj1/c$i;

.field public final synthetic g:Lj1/c;


# direct methods
.method public constructor <init>(Lj1/c;Lj1/a;Lj1/c$i;)V
    .locals 0

    iput-object p1, p0, Lj1/c$g;->g:Lj1/c;

    iput-object p2, p0, Lj1/c$g;->e:Lj1/a;

    iput-object p3, p0, Lj1/c$g;->f:Lj1/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lj1/c;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj1/c$g;->g:Lj1/c;

    iget-object v2, p0, Lj1/c$g;->e:Lj1/a;

    invoke-static {v1, v2}, Lj1/c;->j(Lj1/c;Lj1/a;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lj1/c$g;->f:Lj1/c$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj1/c$i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
