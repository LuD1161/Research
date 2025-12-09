.class public final LD3/w0$b;
.super LD3/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD3/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final i:LD3/w0;

.field public final j:LD3/w0$c;

.field public final k:LD3/s;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LD3/w0;LD3/w0$c;LD3/s;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, LD3/v0;-><init>()V

    iput-object p1, p0, LD3/w0$b;->i:LD3/w0;

    iput-object p2, p0, LD3/w0$b;->j:LD3/w0$c;

    iput-object p3, p0, LD3/w0$b;->k:LD3/s;

    iput-object p4, p0, LD3/w0$b;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LD3/w0$b;->z(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, LD3/w0$b;->i:LD3/w0;

    iget-object v0, p0, LD3/w0$b;->j:LD3/w0$c;

    iget-object v1, p0, LD3/w0$b;->k:LD3/s;

    iget-object v2, p0, LD3/w0$b;->l:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, LD3/w0;->M(LD3/w0;LD3/w0$c;LD3/s;Ljava/lang/Object;)V

    return-void
.end method
