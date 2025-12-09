.class public La1/b$a;
.super La1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/b;->b(Ljava/util/UUID;LR0/E;)La1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:LR0/E;

.field public final synthetic g:Ljava/util/UUID;


# direct methods
.method public constructor <init>(LR0/E;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, La1/b$a;->f:LR0/E;

    iput-object p2, p0, La1/b$a;->g:Ljava/util/UUID;

    invoke-direct {p0}, La1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 3

    iget-object v0, p0, La1/b$a;->f:LR0/E;

    invoke-virtual {v0}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lu0/u;->e()V

    :try_start_0
    iget-object v1, p0, La1/b$a;->f:LR0/E;

    iget-object v2, p0, La1/b$a;->g:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, La1/b;->a(LR0/E;Ljava/lang/String;)V

    invoke-virtual {v0}, Lu0/u;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lu0/u;->i()V

    iget-object v0, p0, La1/b$a;->f:LR0/E;

    invoke-virtual {p0, v0}, La1/b;->f(LR0/E;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lu0/u;->i()V

    throw v1
.end method
