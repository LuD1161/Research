.class public final LK0/l$a$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK0/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final f:LK0/l$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK0/l$a$a;

    invoke-direct {v0}, LK0/l$a$a;-><init>()V

    sput-object v0, LK0/l$a$a;->f:LK0/l$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(LK0/l;)LK0/l;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LK0/l;

    invoke-virtual {p0, p1}, LK0/l$a$a;->a(LK0/l;)LK0/l;

    move-result-object p1

    return-object p1
.end method
