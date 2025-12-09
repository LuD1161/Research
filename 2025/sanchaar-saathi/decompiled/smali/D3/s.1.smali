.class public final LD3/s;
.super LD3/r0;
.source "SourceFile"

# interfaces
.implements LD3/r;


# instance fields
.field public final i:LD3/t;


# direct methods
.method public constructor <init>(LD3/t;)V
    .locals 0

    invoke-direct {p0}, LD3/r0;-><init>()V

    iput-object p1, p0, LD3/s;->i:LD3/t;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, LD3/v0;->A()LD3/w0;

    move-result-object v0

    invoke-virtual {v0, p1}, LD3/w0;->Y(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()LD3/p0;
    .locals 1

    invoke-virtual {p0}, LD3/v0;->A()LD3/w0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LD3/s;->z(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, LD3/s;->i:LD3/t;

    invoke-virtual {p0}, LD3/v0;->A()LD3/w0;

    move-result-object v0

    invoke-interface {p1, v0}, LD3/t;->y(LD3/D0;)V

    return-void
.end method
