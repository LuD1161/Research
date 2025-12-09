.class public final LK3/b;
.super LD3/f0;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final h:LK3/b;

.field public static final i:LD3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LK3/b;

    invoke-direct {v0}, LK3/b;-><init>()V

    sput-object v0, LK3/b;->h:LK3/b;

    sget-object v0, LK3/m;->g:LK3/m;

    const/16 v1, 0x40

    invoke-static {}, LI3/G;->a()I

    move-result v2

    invoke-static {v1, v2}, Lz3/e;->a(II)I

    move-result v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, LI3/G;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, LK3/m;->M(I)LD3/F;

    move-result-object v0

    sput-object v0, LK3/b;->i:LD3/F;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LD3/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Ll3/i;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, LK3/b;->i:LD3/F;

    invoke-virtual {v0, p1, p2}, LD3/F;->K(Ll3/i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Ll3/j;->e:Ll3/j;

    invoke-virtual {p0, v0, p1}, LK3/b;->K(Ll3/i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
