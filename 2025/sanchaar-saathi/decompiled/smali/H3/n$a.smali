.class public final LH3/n$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH3/n;-><init>(LG3/e;Ll3/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:LH3/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/n$a;

    invoke-direct {v0}, LH3/n$a;-><init>()V

    sput-object v0, LH3/n$a;->f:LH3/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILl3/i$b;)Ljava/lang/Integer;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ll3/i$b;

    invoke-virtual {p0, p1, p2}, LH3/n$a;->a(ILl3/i$b;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
