.class public final LR0/I$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR0/I;->f(LR0/r;Landroidx/work/impl/WorkDatabase;Landroidx/work/a;Ljava/util/List;LZ0/u;Ljava/util/Set;)LQ0/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:LR0/I$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR0/I$b;

    invoke-direct {v0}, LR0/I$b;-><init>()V

    sput-object v0, LR0/I$b;->f:LR0/I$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(LZ0/u;)Ljava/lang/String;
    .locals 1

    const-string v0, "spec"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LZ0/u;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Periodic"

    goto :goto_0

    :cond_0
    const-string p1, "OneTime"

    :goto_0
    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LZ0/u;

    invoke-virtual {p0, p1}, LR0/I$b;->a(LZ0/u;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
