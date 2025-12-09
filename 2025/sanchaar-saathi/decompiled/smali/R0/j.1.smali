.class public final LR0/j;
.super Lv0/b;
.source "SourceFile"


# static fields
.field public static final c:LR0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR0/j;

    invoke-direct {v0}, LR0/j;-><init>()V

    sput-object v0, LR0/j;->c:LR0/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lv0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ly0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    "

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method
