.class public LZ0/s$a;
.super Lu0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ0/s;-><init>(Lu0/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LZ0/s;


# direct methods
.method public constructor <init>(LZ0/s;Lu0/u;)V
    .locals 0

    iput-object p1, p0, LZ0/s$a;->d:LZ0/s;

    invoke-direct {p0, p2}, Lu0/i;-><init>(Lu0/u;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic i(Ly0/k;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, LZ0/s$a;->k(Ly0/k;LZ0/q;)V

    return-void
.end method

.method public k(Ly0/k;LZ0/q;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
