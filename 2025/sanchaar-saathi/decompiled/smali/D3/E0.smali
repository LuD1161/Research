.class public final LD3/E0;
.super LD3/v0;
.source "SourceFile"


# instance fields
.field public final i:LD3/m;


# direct methods
.method public constructor <init>(LD3/m;)V
    .locals 0

    invoke-direct {p0}, LD3/v0;-><init>()V

    iput-object p1, p0, LD3/E0;->i:LD3/m;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LD3/E0;->z(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, LD3/v0;->A()LD3/w0;

    move-result-object p1

    invoke-virtual {p1}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, LD3/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, LD3/E0;->i:LD3/m;

    sget-object v1, Lh3/h;->e:Lh3/h$a;

    check-cast p1, LD3/z;

    iget-object p1, p1, LD3/z;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LD3/E0;->i:LD3/m;

    sget-object v1, Lh3/h;->e:Lh3/h$a;

    invoke-static {p1}, LD3/x0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
