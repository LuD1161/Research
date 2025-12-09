.class public final LD3/E$c;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD3/E;->c(Ll3/i;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:LD3/E$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/E$c;

    invoke-direct {v0}, LD3/E$c;-><init>()V

    sput-object v0, LD3/E$c;->f:LD3/E$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ZLl3/i$b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ll3/i$b;

    invoke-virtual {p0, p1, p2}, LD3/E$c;->a(ZLl3/i$b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
