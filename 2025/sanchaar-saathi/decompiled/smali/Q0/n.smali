.class public final LQ0/n;
.super LQ0/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ0/n$a;,
        LQ0/n$b;
    }
.end annotation


# static fields
.field public static final e:LQ0/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ0/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQ0/n$b;-><init>(Lv3/g;)V

    sput-object v0, LQ0/n;->e:LQ0/n$b;

    return-void
.end method

.method public constructor <init>(LQ0/n$a;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LQ0/u$a;->d()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, LQ0/u$a;->g()LZ0/u;

    move-result-object v1

    invoke-virtual {p1}, LQ0/u$a;->e()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, LQ0/u;-><init>(Ljava/util/UUID;LZ0/u;Ljava/util/Set;)V

    return-void
.end method
