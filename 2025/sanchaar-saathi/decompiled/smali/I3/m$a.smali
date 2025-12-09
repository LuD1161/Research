.class public final LI3/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public e:Ljava/lang/Runnable;

.field public final synthetic f:LI3/m;


# direct methods
.method public constructor <init>(LI3/m;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, LI3/m$a;->f:LI3/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI3/m$a;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :try_start_0
    iget-object v1, p0, LI3/m$a;->e:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Ll3/j;->e:Ll3/j;

    invoke-static {v2, v1}, LD3/H;->a(Ll3/i;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, LI3/m$a;->f:LI3/m;

    invoke-static {v1}, LI3/m;->O(LI3/m;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, LI3/m$a;->e:Ljava/lang/Runnable;

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v1, p0, LI3/m$a;->f:LI3/m;

    invoke-static {v1}, LI3/m;->N(LI3/m;)LD3/F;

    move-result-object v1

    iget-object v2, p0, LI3/m$a;->f:LI3/m;

    invoke-virtual {v1, v2}, LD3/F;->L(Ll3/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LI3/m$a;->f:LI3/m;

    invoke-static {v0}, LI3/m;->N(LI3/m;)LD3/F;

    move-result-object v0

    iget-object v1, p0, LI3/m$a;->f:LI3/m;

    invoke-virtual {v0, v1, p0}, LD3/F;->K(Ll3/i;Ljava/lang/Runnable;)V

    return-void
.end method
