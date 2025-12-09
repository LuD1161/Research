.class public final LD3/w0$a;
.super LD3/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD3/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final m:LD3/w0;


# direct methods
.method public constructor <init>(Ll3/e;LD3/w0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LD3/m;-><init>(Ll3/e;I)V

    iput-object p2, p0, LD3/w0$a;->m:LD3/w0;

    return-void
.end method


# virtual methods
.method public H()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method

.method public t(LD3/p0;)Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, LD3/w0$a;->m:LD3/w0;

    invoke-virtual {v0}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LD3/w0$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, LD3/w0$c;

    invoke-virtual {v1}, LD3/w0$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    instance-of v1, v0, LD3/z;

    if-eqz v1, :cond_1

    check-cast v0, LD3/z;

    iget-object p1, v0, LD3/z;->a:Ljava/lang/Throwable;

    return-object p1

    :cond_1
    invoke-interface {p1}, LD3/p0;->z()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method
