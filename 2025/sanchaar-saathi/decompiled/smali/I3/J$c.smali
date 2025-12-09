.class public final LI3/J$c;
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
.field public static final f:LI3/J$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI3/J$c;

    invoke-direct {v0}, LI3/J$c;-><init>()V

    sput-object v0, LI3/J$c;->f:LI3/J$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(LI3/N;Ll3/i$b;)LI3/N;
    .locals 1

    instance-of v0, p2, LD3/I0;

    if-eqz v0, :cond_0

    check-cast p2, LD3/I0;

    iget-object v0, p1, LI3/N;->a:Ll3/i;

    invoke-interface {p2, v0}, LD3/I0;->k(Ll3/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, LI3/N;->a(LD3/I0;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LI3/N;

    check-cast p2, Ll3/i$b;

    invoke-virtual {p0, p1, p2}, LI3/J$c;->a(LI3/N;Ll3/i$b;)LI3/N;

    move-result-object p1

    return-object p1
.end method
