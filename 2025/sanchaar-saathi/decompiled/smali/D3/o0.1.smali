.class public final LD3/o0;
.super LD3/v0;
.source "SourceFile"


# instance fields
.field public final i:Lu3/l;


# direct methods
.method public constructor <init>(Lu3/l;)V
    .locals 0

    invoke-direct {p0}, LD3/v0;-><init>()V

    iput-object p1, p0, LD3/o0;->i:Lu3/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LD3/o0;->z(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LD3/o0;->i:Lu3/l;

    invoke-interface {v0, p1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
