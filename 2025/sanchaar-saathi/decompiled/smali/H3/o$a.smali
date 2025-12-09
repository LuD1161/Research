.class public final synthetic LH3/o$a;
.super Lv3/j;
.source "SourceFile"

# interfaces
.implements Lu3/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LH3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final n:LH3/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/o$a;

    invoke-direct {v0}, LH3/o$a;-><init>()V

    sput-object v0, LH3/o$a;->n:LH3/o$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, LG3/e;

    const-string v3, "emit"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lv3/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LG3/e;

    check-cast p3, Ll3/e;

    invoke-virtual {p0, p1, p2, p3}, LH3/o$a;->o(LG3/e;Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(LG3/e;Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p3}, LG3/e;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
