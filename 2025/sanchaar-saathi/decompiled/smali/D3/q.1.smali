.class public final LD3/q;
.super LD3/r0;
.source "SourceFile"


# instance fields
.field public final i:LD3/m;


# direct methods
.method public constructor <init>(LD3/m;)V
    .locals 0

    invoke-direct {p0}, LD3/r0;-><init>()V

    iput-object p1, p0, LD3/q;->i:LD3/m;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LD3/q;->z(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, LD3/q;->i:LD3/m;

    invoke-virtual {p0}, LD3/v0;->A()LD3/w0;

    move-result-object v0

    invoke-virtual {p1, v0}, LD3/m;->t(LD3/p0;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, LD3/m;->J(Ljava/lang/Throwable;)V

    return-void
.end method
