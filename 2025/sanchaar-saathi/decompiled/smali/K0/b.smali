.class public final LK0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK0/g;


# static fields
.field public static final a:LK0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK0/b;

    invoke-direct {v0}, LK0/b;-><init>()V

    sput-object v0, LK0/b;->a:LK0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LK0/f;)LK0/f;
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
