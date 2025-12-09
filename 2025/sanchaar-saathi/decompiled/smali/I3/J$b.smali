.class public final LI3/J$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI3/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:LI3/J$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI3/J$b;

    invoke-direct {v0}, LI3/J$b;-><init>()V

    sput-object v0, LI3/J$b;->f:LI3/J$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(LD3/I0;Ll3/i$b;)LD3/I0;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    instance-of p1, p2, LD3/I0;

    if-eqz p1, :cond_1

    check-cast p2, LD3/I0;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I0;

    check-cast p2, Ll3/i$b;

    invoke-virtual {p0, p1, p2}, LI3/J$b;->a(LD3/I0;Ll3/i$b;)LD3/I0;

    move-result-object p1

    return-object p1
.end method
