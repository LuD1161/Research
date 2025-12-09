.class public La1/b$b;
.super La1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/b;->c(Ljava/lang/String;LR0/E;Z)La1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:LR0/E;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(LR0/E;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, La1/b$b;->f:LR0/E;

    iput-object p2, p0, La1/b$b;->g:Ljava/lang/String;

    iput-boolean p3, p0, La1/b$b;->h:Z

    invoke-direct {p0}, La1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 4

    iget-object v0, p0, La1/b$b;->f:LR0/E;

    invoke-virtual {v0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v1

    iget-object v2, p0, La1/b$b;->g:Ljava/lang/String;

    invoke-interface {v1, v2}, LZ0/v;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, La1/b$b;->f:LR0/E;

    invoke-virtual {p0, v3, v2}, La1/b;->a(LR0/E;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lu0/u;->i()V

    iget-boolean v0, p0, La1/b$b;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/b$b;->f:LR0/E;

    invoke-virtual {p0, v0}, La1/b;->f(LR0/E;)V

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Lu0/u;->i()V

    throw v1
.end method
