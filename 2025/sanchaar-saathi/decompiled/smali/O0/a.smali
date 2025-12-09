.class public final LO0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LO0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LO0/a;

    invoke-direct {v0}, LO0/a;-><init>()V

    sput-object v0, LO0/a;->a:LO0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    return p1
.end method
